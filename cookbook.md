## Introduction 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


 ## How data is collected

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## The Project

This project is to extract the average measurements on the mean and standard deviation for each measurement for each activity and each volunteer, then save the tidy data set to a text file ('NewTable.txt').

Raw data file is downloaded and saved to working directory as 'DataSet.zip'

The information on variables used in the script :-

* var_index : the column (in raw data file) of mean and standard deviation for each measurement that the project is interested in
* var_names : the names of mean and standard deviation for each measurement that the project is interested in
* x_train : the 561 measurement data for each observation from training data
* y_train : the activity performed for each observation from training data
* subject_train : the volunteer for each observation from training data
* activity_train : the activity performed for each observation from training data (in description)
* train_set :  the complete training data set with volunteer ID, activity name and 66 (out of 561) measurements that the project is interested in
* x_test : the 561 measurement data for each observation from test data
* y_test : the activity performed for each observation from test data
* subject_test : the volunteer for each observation from test data
* activity_test : the activity performed for each observation from test data (in description)
* test_set :  the complete test data set with volunteer ID, activity name and 66 (out of 561) measurements that the project is interested in
* NewTable : the full data set including train_set and test_set
* NewTable2 : the average measurements on the mean and standard deviation for each measurement for each activity and each volunteer

The 66 measurements that the project is interested in are :

* mean of : tBodyAcc-mean()-X
* mean of : tBodyAcc-mean()-Y
* mean of : tBodyAcc-mean()-Z
* mean of : tBodyAcc-std()-X
* mean of : tBodyAcc-std()-Y
* mean of : tBodyAcc-std()-Z
* mean of : tGravityAcc-mean()-X
* mean of : tGravityAcc-mean()-Y
* mean of : tGravityAcc-mean()-Z
* mean of : tGravityAcc-std()-X
* mean of : tGravityAcc-std()-Y
* mean of : tGravityAcc-std()-Z
* mean of : tBodyAccJerk-mean()-X
* mean of : tBodyAccJerk-mean()-Y
* mean of : tBodyAccJerk-mean()-Z
* mean of : tBodyAccJerk-std()-X
* mean of : tBodyAccJerk-std()-Y
* mean of : tBodyAccJerk-std()-Z
* mean of : tBodyGyro-mean()-X
* mean of : tBodyGyro-mean()-Y
* mean of : tBodyGyro-mean()-Z
* mean of : tBodyGyro-std()-X
* mean of : tBodyGyro-std()-Y
* mean of : tBodyGyro-std()-Z
* mean of : tBodyGyroJerk-mean()-X
* mean of : tBodyGyroJerk-mean()-Y
* mean of : tBodyGyroJerk-mean()-Z
* mean of : tBodyGyroJerk-std()-X
* mean of : tBodyGyroJerk-std()-Y
* mean of : tBodyGyroJerk-std()-Z
* mean of : tBodyAccMag-mean()
* mean of : tBodyAccMag-std()
* mean of : tGravityAccMag-mean()
* mean of : tGravityAccMag-std()
* mean of : tBodyAccJerkMag-mean()
* mean of : tBodyAccJerkMag-std()
* mean of : tBodyGyroMag-mean()
* mean of : tBodyGyroMag-std()
* mean of : tBodyGyroJerkMag-mean()
* mean of : tBodyGyroJerkMag-std()
* mean of : fBodyAcc-mean()-X
* mean of : fBodyAcc-mean()-Y
* mean of : fBodyAcc-mean()-Z
* mean of : fBodyAcc-std()-X
* mean of : fBodyAcc-std()-Y
* mean of : fBodyAcc-std()-Z
* mean of : fBodyAccJerk-mean()-X
* mean of : fBodyAccJerk-mean()-Y
* mean of : fBodyAccJerk-mean()-Z
* mean of : fBodyAccJerk-std()-X
* mean of : fBodyAccJerk-std()-Y
* mean of : fBodyAccJerk-std()-Z
* mean of : fBodyGyro-mean()-X
* mean of : fBodyGyro-mean()-Y
* mean of : fBodyGyro-mean()-Z
* mean of : fBodyGyro-std()-X
* mean of : fBodyGyro-std()-Y
* mean of : fBodyGyro-std()-Z
* mean of : fBodyAccMag-mean()
* mean of : fBodyAccMag-std()
* mean of : fBodyBodyAccJerkMag-mean()
* mean of : fBodyBodyAccJerkMag-std()
* mean of : fBodyBodyGyroMag-mean()
* mean of : fBodyBodyGyroMag-std()
* mean of : fBodyBodyGyroJerkMag-mean()
* mean of : fBodyBodyGyroJerkMag-std()
