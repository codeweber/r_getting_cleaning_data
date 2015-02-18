library(dplyr)
#You should create one R script called run_analysis.R that does the following. 

#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement. 
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names. 

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


#Load the feature names into memory
features <- read.table("./data/UCI HAR Dataset/features.txt", col.names = c("num", "name"))

#Create valid column names for a data frame, by removing () - and ,
features$validColName <- sapply(features$name, FUN=function(x){
  temp <- gsub("[(][)]", "", x)
  temp <- gsub("-", "_", temp)
  temp <- gsub(",", "_", temp)
})

#Determine those features based on measurements of the mean and std deviation
meanFeatures <- which(grepl("mean[(][)]", features$name))
stdFeatures <- which(grepl("std[(][)]", features$name))

#Load the activity names
activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt", col.names = c("num","name"))

#Load the test data into memory
test_y  <- read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names = c("activity"))
test_y$activity <- factor(test_y$activity, labels=activities$name)

test_subject  <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names = c("subject"))
test_subject$subject <- factor(test_subject$subject)

test_X <- read.table("./data/UCI HAR Dataset/test/X_test.txt", col.names = features$validColName)

test <- cbind(test_subject, test_y, test_X[,c(meanFeatures, stdFeatures)])

#Load the training data into memory
train_y  <- read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names = c("activity"))
train_y$activity <- factor(train_y$activity, labels=activities$name)

train_subject  <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names = c("subject"))
train_subject$subject <- factor(train_subject$subject)

train_X <- read.table("./data/UCI HAR Dataset/train/X_train.txt", col.names = features$validColName)

train <- cbind(train_subject, train_y, train_X[,c(meanFeatures, stdFeatures)])

#Combine the test and train data sets
all_data <- rbind(train, test)

#Grouping by activity and subject, determine the mean for each value
summary_all_data <- all_data %>%
  group_by(activity, subject) %>%
  summarise_each(funs(mean))

#Output to a file
write.table(summary_all_data, "./tidy_data_set_step_5.txt", row.name=F)

##TO DO... change the column names in the output file