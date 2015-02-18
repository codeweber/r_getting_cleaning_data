Codebook
========

This document describes the variables contained in the tidy data set produced by the script run_analysis.R

There are 68 columns in total in the data set. 2 of these columns identify each row, the remaining 66 store the observations.

The rows in this tidy data set correspond to a unique combination of the values given in the identifying columns "subject" and "activity", which are further described as follows:
"subject"
	Contains a label corresponding to the test subject that was performing the activty.
	Takes a value from 1 to 30.
	Sourced from subject_test.txt and subject_train.txt

"activity"
	A text label corresponding to one of the 6 activities performed by the test subject.
	Possible values are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING
	Sourced from y_test.txt and y_train.txt

The remaining columns 66 in the data set correspond to the mean values of distinct variables for a given subject and activity. 
These variables correspond to the mean and standard deviation of various features, as discussed in the document features_info.txt.

Note that all features are normalised and bounded within [-1,1], thus all features are dimensionless.

"mean_tBodyAcc_mean_X"
"mean_tBodyAcc_mean_Y"
"mean_tBodyAcc_mean_Z"
	Contains the mean of the mean of X/Y/Z component of tBodyAcc, for a given subject and activty.

"mean_tBodyAcc_std_X"
"mean_tBodyAcc_std_Y"
"mean_tBodyAcc_std_Z"
	Contains the mean of the standard deviation of X/Y/Z component of tBodyAcc, for a given subject and activty.

"mean_tGravityAcc_mean_X"
"mean_tGravityAcc_mean_Y"
"mean_tGravityAcc_mean_Z"
	Contains the mean of the mean of X/Y/Z component of tGravityAcc, for a given subject and activty.

"mean_tGravityAcc_std_X"
"mean_tGravityAcc_std_Y"
"mean_tGravityAcc_std_Z"
	Contains the mean of the standard deviation of X/Y/Z component of tGravityAcc, for a given subject and activty.

"mean_tBodyAccJerk_mean_X"
"mean_tBodyAccJerk_mean_Y"
"mean_tBodyAccJerk_mean_Z"
	Contains the mean of the mean of X/Y/Z component of tBodyAccJerk, for a given subject and activty.

"mean_tBodyAccJerk_std_X"
"mean_tBodyAccJerk_std_Y"
"mean_tBodyAccJerk_std_Z"
	Contains the mean of the standard deviation of X/Y/Z component of tBodyAccJerk, for a given subject and activty.

"mean_tBodyGyro_mean_X"
"mean_tBodyGyro_mean_Y"
"mean_tBodyGyro_mean_Z"
	Contains the mean of the mean of X/Y/Z component of tBodyGyro, for a given subject and activty.

"mean_tBodyGyro_std_X"
"mean_tBodyGyro_std_Y"
"mean_tBodyGyro_std_Z"
	Contains the mean of the standard deviation of X/Y/Z component of tBodyGyro, for a given subject and activty.

"mean_tBodyGyroJerk_mean_X"
"mean_tBodyGyroJerk_mean_Y"
"mean_tBodyGyroJerk_mean_Z"
	Contains the mean of the mean of X/Y/Z component of tBodyGyroJerk, for a given subject and activty.

"mean_tBodyGyroJerk_std_X"
"mean_tBodyGyroJerk_std_Y"
"mean_tBodyGyroJerk_std_Z"
	Contains the mean of the standard deviation of X/Y/Z component of tBodyGyroJerk, for a given subject and activty.

"mean_tBodyAccMag_mean"
	Contains the mean of the mean of tBodyAccMag, for a given subject and activty.
"mean_tBodyAccMag_std"
	Contains the mean of the standard deviation of tBodyAccMag, for a given subject and activty.

"mean_tGravityAccMag_mean"
	Contains the mean of the mean of tGravityAccMag, for a given subject and activty.
"mean_tGravityAccMag_std"
	Contains the mean of the standard deviation of tGravityAccMag, for a given subject and activty.

"mean_tBodyAccJerkMag_mean"
	Contains the mean of the mean of tBodyAccJerkMag, for a given subject and activty.
"mean_tBodyAccJerkMag_std"
	Contains the mean of the standard deviation of tBodyAccJerkMag, for a given subject and activty.

"mean_tBodyGyroMag_mean"
	Contains the mean of the mean of tBodyGyroMag, for a given subject and activty.
"mean_tBodyGyroMag_std"
	Contains the mean of the std of tBodyGyroMag, for a given subject and activty.

"mean_tBodyGyroJerkMag_mean"
	Contains the mean of the mean of tBodyGyroJerkMag, for a given subject and activty.
"mean_tBodyGyroJerkMag_std"
	Contains the mean of the std of tBodyGyroJerkMag, for a given subject and activty.

"mean_fBodyAcc_mean_X"
"mean_fBodyAcc_mean_Y"
"mean_fBodyAcc_mean_Z"
	Contains the mean of the mean of X/Y/Z compoent of the mean of fBodyAcc, for a given subject and activty.

"mean_fBodyAcc_std_X"
"mean_fBodyAcc_std_Y"
"mean_fBodyAcc_std_Z"
	Contains the mean of the mean of X/Y/Z compoent of the std of fBodyAcc, for a given subject and activty.

"mean_fBodyAccJerk_mean_X"
"mean_fBodyAccJerk_mean_Y"
"mean_fBodyAccJerk_mean_Z"
	Contains the mean of the mean of X/Y/Z compoent of fBodyAccJerk, for a given subject and activty.

"mean_fBodyAccJerk_std_X"
"mean_fBodyAccJerk_std_Y"
"mean_fBodyAccJerk_std_Z"
	Contains the mean of the std of X/Y/Z component of fBodyAccJerk, for a given subject and activty.

"mean_fBodyGyro_mean_X"
"mean_fBodyGyro_mean_Y"
"mean_fBodyGyro_mean_Z"
	Contains the mean of the mean of X/Y/Z component of fBodyGyro, for a given subject and activty.

"mean_fBodyGyro_std_X"
"mean_fBodyGyro_std_Y"
"mean_fBodyGyro_std_Z"
	Contains the mean of the std of X/Y/Z component of fBodyGyro, for a given subject and activty.

"mean_fBodyAccMag_mean"
	Contains the mean of the mean of fBodyAccMag, for a given subject and activty.
"mean_fBodyAccMag_std"
	Contains the mean of the std of fBodyAccMag, for a given subject and activty.

"mean_fBodyBodyAccJerkMag_mean"
	Contains the mean of the mean of fBodyAccJerkMag, for a given subject and activty.
"mean_fBodyBodyAccJerkMag_std"
	Contains the mean of the std of fBodyAccJerkMag, for a given subject and activty.

"mean_fBodyBodyGyroMag_mean"
	Contains the mean of the mean of fBodyGyroMag, for a given subject and activty.
"mean_fBodyBodyGyroMag_std"
	Contains the mean of the std of fBodyGyroMag, for a given subject and activty.

"mean_fBodyBodyGyroJerkMag_mean"
	Contains the mean of the mean of fBodyGyroJerkMag, for a given subject and activty.
"mean_fBodyBodyGyroJerkMag_std"
	Contains the mean of the std of fBodyGyroJerkMag, for a given subject and activty.
