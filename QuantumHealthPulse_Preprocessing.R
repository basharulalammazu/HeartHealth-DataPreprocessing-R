# Load library
library(dplyr)


# Dataset Import
dataset <- read.csv("D:/University/Semester 8/Data Science/MID/Project/HeartHealth-DataPreprocessing-R/Dataset/HeartDisease_QuantumData.csv", header = TRUE, sep = ",")


# Number of rows and column dataset
dim(dataset)


# Columns name
names(dataset)


# View the first few rows
head(dataset)


# View the structure of the dataset
str(dataset)


# Summary of dataset
summary(dataset)


# Total Missing Value
sum(is.na(dataset))


check_datatypes <- function(df) {
  sapply(df, class)
}

check_datatypes(dataset)


# Check if any numeric columns are actually character or factor:
numeric_issues <- sapply(dataset, function(col) {
  (is.character(col) || is.factor(col)) && all(suppressWarnings(!is.na(as.numeric(as.character(col)))))
})

which(numeric_issues)


potential_numeric <- sapply(dataset, function(x) {
  is.character(x) && all(!is.na(suppressWarnings(as.numeric(x))))
})
names(dataset)[potential_numeric]



dataset$BloodPressure <- as.numeric(dataset$BloodPressure)

dataset$Heart_Rate[dataset$Heart_Rate == "Low"] <- 0
dataset$Heart_Rate[dataset$Heart_Rate == "High"] <- 1
dataset$Heart_Rate[dataset$Heart_Rate == ""] <- NA



# Missing values per column
colSums(is.na(dataset))


missing_barplot <- function() {
  missing_counts <- colSums(is.na(dataset))
  barplot(missing_counts,
          main = "Missing Values per Column",
          ylab = "Number of Missing Values",
          xlab = "Columns",
          col = "skyblue",
          las = 2)
}

missing_barplot()


head(dataset)

# Outliers
detect_outliers <- function(column_name) {
  col_data <- dataset[[column_name]]
  
  Q1 <- quantile(col_data, 0.25, na.rm = TRUE)
  Q3 <- quantile(col_data, 0.75, na.rm = TRUE)
  IQR <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q3 + 1.5 * IQR
  
  outliers <- col_data[col_data < lower_bound | col_data > upper_bound]
  return(outliers)
}


outlier_values <- detect_outliers("Age")
print(outlier_values)

outlier_values <- detect_outliers("Gender")
print(outlier_values)

outlier_values <- detect_outliers("BloodPressure")
print(outlier_values)



# Most Frequency for Gender
impute_mode <- function(column_name) {
  mode_value <- names(sort(table(dataset[[column_name]]), decreasing = TRUE))[1]
  dataset[[column_name]][is.na(dataset[[column_name]])] <- mode_value
  return(dataset)
}



# Instant discard for Heart Rate
discard_na <- function(column_name) {
  dataset <- dataset[!is.na(dataset[[column_name]]), ]
  return(dataset)
}



# Median for Age because have outlier
impute_median <- function(column_name) {
  median_value <- median(dataset[[column_name]], na.rm = TRUE)
  dataset[[column_name]][is.na(dataset[[column_name]])] <- median_value
  return(dataset)
}


# Mean for Blood Pressure 
impute_mean <- function(column_name) {
  dataset[[column_name]] <- as.numeric(dataset[[column_name]])  # ensure numeric
  mean_value <- mean(dataset[[column_name]], na.rm = TRUE)
  dataset[[column_name]][is.na(dataset[[column_name]])] <- mean_value
  return(dataset)
}


dataset <- impute_mode("Gender")
dataset <- impute_median("Age")
dataset <- impute_mean("BloodPressure")
dataset <- discard_na("Heart_Rate")


dim(dataset)

sum(is.na(dataset))

unique_values <- unique(dataset$HeartDisease)
print(unique_values)

value_counts <- table(dataset$HeartDisease)
print(value_counts)


dataset %>% filter(!is.na(HeartDisease))


# Duplicate
sum(duplicated(dataset))  # Number of duplicate rows
dataset <- dataset %>% distinct()
dim(dataset)


# Filter: Age should be between 0 and 120
dataset <- dataset %>% filter(Age >= 0 & Age <= 120)
dim(dataset)


# Balance dataset (simple undersampling)
balanced_dataset <- dataset %>%
  group_by(HeartDisease) %>%
  sample_n(min(n())) %>%
  ungroup()

table(balanced_dataset$HeartDisease)

cat("Before:\n")
print(table(dataset$HeartDisease))

cat("After:\n")
print(table(balanced_dataset$HeartDisease))


#  Normalize a Continuous Attribute
# AGE
dataset <- dataset %>%
  mutate(Normalized_Age = (Age - min(Age)) / (max(Age) - min(Age)))

head(dataset)

# BloodPressure 
dataset <- dataset %>%
  mutate(Normalize_BloodPressure = (BloodPressure - min(BloodPressure))/(max(BloodPressure) - min(BloodPressure)))

head(dataset)

# Cholesterol
dataset <- dataset %>%
  mutate(Normalized_Cholesterol = (Cholesterol - min(Cholesterol))/(max(Cholesterol) - min(Cholesterol)))

head(dataset)



# Split Dataset
set.seed(123)
n <- nrow(dataset)
train_data <- sample(1:n, 0.7 * n)

train <- dataset[train_data, ]
test <- dataset[-train_data, ]


dim(train)
dim(test)





#  Central Tendencies of Age by Gender
dataset %>%
  group_by(Gender) %>%
  summarise(
    Mean_Age = mean(Age),
    Median_Age = median(Age),
    Mode_Age = as.numeric(names(sort(table(Age), decreasing = TRUE)[1]))
  )


# Central Tendencies of Age by Heart_Rate
dataset %>%
  group_by(Heart_Rate) %>%
  summarise(
    Mean_Age = mean(Age),
    Median_Age = median(Age),
    Mode_Age = as.numeric(names(sort(table(Age), decreasing = TRUE)[1]))
  )


# Spread of Age by Gender
dataset %>%
  group_by(Gender) %>%
  summarise(
    Range = max(Age) - min(Age),
    IQR = IQR(Age),
    Variance = var(Age),
    Std_Dev = sd(Age)
  )
