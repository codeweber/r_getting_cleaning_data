#This script produces two tidy data sets from the training and test data sets
#See the README.md and Codebook.md for further details

#Load the activity names
activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt", col.names = c("num","name"))

#Load the feature names
features <- read.table("./data/UCI HAR Dataset/features.txt", col.names = c("num", "name"))

#Using the feature names, create valid column names for a data frame, by removing the characters: () - ,
features$validColName <- sapply(features$name, FUN=function(x){
  temp <- gsub("[(][)]", "", x)
  temp <- gsub("-", "_", temp)
  temp <- gsub(",", "_", temp)
})

#Determine which features are based on measurements of the mean and std deviation
meanFeatures <- which(grepl("mean[(][)]", features$name))
stdFeatures <- which(grepl("std[(][)]", features$name))


#Load the test data into memory
#Load the activity data, and convert to a factor using as labels the activity names held in the 
#data frame activities
test_y  <- read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names = c("activity"))
test_y$activity <- factor(test_y$activity, labels=activities$name)

#Load the subject and convert to a factor
test_subject  <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names = c("subject"))
test_subject$subject <- factor(test_subject$subject)

#Load the features, using the prepared column names in the data frame features
test_X <- read.table("./data/UCI HAR Dataset/test/X_test.txt", col.names = features$validColName)

#Combine the subject and activity together with those features that are functions of the mean and std
test <- cbind(test_subject, test_y, test_X[,c(meanFeatures, stdFeatures)])


#Load the training data into memory, in an identical fashion to the test data
train_y  <- read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names = c("activity"))
train_y$activity <- factor(train_y$activity, labels=activities$name)

train_subject  <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names = c("subject"))
train_subject$subject <- factor(train_subject$subject)

train_X <- read.table("./data/UCI HAR Dataset/train/X_train.txt", col.names = features$validColName)

train <- cbind(train_subject, train_y, train_X[,c(meanFeatures, stdFeatures)])

#Merge the test and train data sets
all_data <- rbind(train, test)

#Grouping by activity and subject, determine the mean for each value
library(dplyr)
means_by_activity_subject <- all_data %>% group_by(activity, subject) %>% summarise_each(funs(mean))

#Change the column names, such that all columns except activity and subject have the prefix mean_
names(means_by_activity_subject) <- sapply(names(means_by_activity_subject), FUN=function(x){
  if (x == "activity" | x == "subject") {
    x
  }
  else {  
    paste0("mean_",x)  
  }
})

#Output to a file
write.table(means_by_activity_subject, "./tidy_data_set_step_5.txt", row.name=F)

