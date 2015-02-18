The script run_analysis.R performs the following tasks:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The output of the script is a tidy data set from step 5, which is exported as a txt file.


The scripts proceeds as follows:

1. The activity labels are read from the file activity_labels.txt. These labels are used later as the descriptive activity names (task 3).

2. The names of the features are read from the file features.txt. These feature names are used to:
   a. Identify the features based on the mean, using the pattern "mean()", and the features based on the std, using the pattern "std()" (task 2). There are 66 such variables in total.
   b. Generate descriptive variable names that can be used to label the columns of data frames (task 4). In order for the column names to be valid, the "()" were removed, whilst the charachters "," and "-" are replaced with an underscore "_". 

3. The test data are imported, in the following steps:
   a. The activity data is imported from y_test.txt,
   b. The activity data is converted into a factor, using the labels imported in step 1,
   c. The subject data is imported from subject_test.txt and converted into a factor,
   d. The feature data is imported from X_test.txt, using the column names generated in 2b,
   e. The activity, subject and feature date are merged into a single data frame. The feature data is restricted to the mean and std variables, which were identified in 2a.

4. The training data is imported analogously to the test data.

5. The training data and test data are merged (task 1), forming a data set that is stored in the data frame "all_data".

6. Using the dplyr package, the average is calculated for each variable, grouped by subject and activity (task 5). The result is stored in second tidy data set "means_by_activity_subject".
   a. Note that there are 30 subjects and 6 activities, therefore there should be 180 rows in this data frame.

7. The column names in means_by_activity_subject are preappended with "mean_", except for the columns activity and subject.

8. The data frame means_by_activity_subject is read out to a file.