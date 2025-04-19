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



dataset$BloodPressure <- as.numeric(dataset$BloodPressure)

dataset$Heart_Rate[dataset$Heart_Rate == "Low"] <- 0
dataset$Heart_Rate[dataset$Heart_Rate == "High"] <- 1
dataset$Heart_Rate[dataset$Heart_Rate == ""] <- NA



# Missing values per column
colSums(is.na(dataset))


# Discard Instances
dataset <- dataset %>% filter(!is.na(Age))

sum(is.na(dataset$Age))


head(dataset)





