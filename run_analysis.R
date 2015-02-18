library(dplyr)
#You should create one R script called run_analysis.R that does the following. 

#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement. 
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names. 

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


#Load the feature names into memory
features <- read.table("./data/UCI HAR Dataset/features.txt", col.names = c("num", "name"))
sapply(features$name, FUN=function(x){
  sub("()", "", x)  
})
?sub

#Determine those features based on measurements of the mean and std deviation
meanFeatures <- which(grepl("mean()", features$name))
stdFeatures <- which(grepl("std()", features$name))

#Load the data into memory
test_y  <- read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names = c("activity"))
test_subject  <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names = c("subject"))
test_X <- read.table("./data/UCI HAR Dataset/test/X_test.txt", col.names = features$name)

names(test_X[, c(meanFeatures, stdFeatures)])

test_X %>% 
  select(contains("mean..")) %>%
  head
x = names(test_X)[[1]]
features$name
x


?read.table
?select

train_y  <- read.table("./data/UCI HAR Dataset/train/y_test.txt", col.names = c("activity"))
train_subject  <- read.table("./data/UCI HAR Dataset/train/subject_test.txt", col.names = c("subject"))
train_X <- read.table("./data/UCI HAR Dataset/train/X_test.txt", col.names = features$name)



