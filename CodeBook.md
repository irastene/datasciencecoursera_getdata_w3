### Original data
Original data could be downloaded [from here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 
This Human Activity Recognition Using Smartphones dataset was collected for 30 volunteers and 6 activities. A lot of measurements of sensor signals were made. 


### Transformations performed
R script run_analysis.R provided in this repository makes fallowing work:
* merges the training (UCI HAR Dataset/train/X_train.txt) and the test (UCI HAR Dataset/test/X_test.txt) sets of measuremens;
* merges the training (UCI HAR Dataset/train/y_train.txt) and the test (UCI HAR Dataset/test/y_test.txt) sets of activities;
* merges the training (UCI HAR Dataset/train/subject_train.txt) and the test (UCI HAR Dataset/test/subject_test.txt) sets of subjects (volunteers);
* extracts only the measurements on the mean and standard deviation for each measurement (using all features file "UCI HAR Dataset/features.txt"); 
* uses descriptive activity names ("UCI HAR Dataset/activity_labels.txt") to name the activities;
* creates one data set with activity, subject and measurements; 
* labels the data set with descriptive variable names ("activity", "subject", features names from original data);
* creates a second, independent tidy data set with the average of each variable for each activity and each subject;
* writes tidy data set into files tidy_data_set.csv and  tidy_data_set.txt.

### Tidy data variables list
Features are normalized and bounded within [-1,1]. Names of measurements (see list below) could be read as fallows:
* prefix 't' - time
* prefix 'f' - frequency domain signals
* '-X', '-Y', '-Z' -  3-axial signals in the X, Y and Z directions 
* 'tAcc-XYZ', 'tGyro-XYZ' - accelerometer and gyroscope 3-axial raw signals 
* 'tBodyAcc-XYZ', 'tGravityAcc-XYZ' - acceleration signal separated into body and gravity acceleration signals 	
* 'tBodyAccJerk-XYZ', 'tBodyGyroJerk-XYZ' - body linear acceleration and angular velocity derived in time to obtain Jerk signals
* 'tBodyAccMag', 'tGravityAccMag', 'tBodyAccJerkMag', 'tBodyGyroMag', 'tBodyGyroJerkMag' - magnitude of three-dimensional signals calculated using the Euclidean norm
* 'fBodyAcc-XYZ', 'fBodyAccJerk-XYZ', 'fBodyGyro-XYZ', 'fBodyAccJerkMag', 'fBodyGyroMag', 'fBodyGyroJerkMag' - Fast Fourier Transform (FFT) applied to some of signals
* 'mean()' - estimated mean for above mentioned signals 
* 'std()' - estimated standard deviation for above mentioned signals

Complete list of variables:
* "activity" - activity label (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)              
* "subject" - an identifier of the subject who carried out the experiment                  
* "tBodyAcc-mean()-X"          
* "tBodyAcc-mean()-Y"          
* "tBodyAcc-mean()-Z"          
* "tBodyAcc-std()-X"           
* "tBodyAcc-std()-Y"           
* "tBodyAcc-std()-Z"           
* "tGravityAcc-mean()-X"       
* "tGravityAcc-mean()-Y"       
* "tGravityAcc-mean()-Z"       
* "tGravityAcc-std()-X"        
* "tGravityAcc-std()-Y"        
* "tGravityAcc-std()-Z"        
* "tBodyAccJerk-mean()-X"      
* "tBodyAccJerk-mean()-Y"      
* "tBodyAccJerk-mean()-Z"      
* "tBodyAccJerk-std()-X"       
* "tBodyAccJerk-std()-Y"       
* "tBodyAccJerk-std()-Z"       
* "tBodyGyro-mean()-X"         
* "tBodyGyro-mean()-Y"         
* "tBodyGyro-mean()-Z"         
* "tBodyGyro-std()-X"          
* "tBodyGyro-std()-Y"          
* "tBodyGyro-std()-Z"          
* "tBodyGyroJerk-mean()-X"     
* "tBodyGyroJerk-mean()-Y"     
* "tBodyGyroJerk-mean()-Z"     
* "tBodyGyroJerk-std()-X"      
* "tBodyGyroJerk-std()-Y"      
* "tBodyGyroJerk-std()-Z"      
* "tBodyAccMag-mean()"         
* "tBodyAccMag-std()"          
* "tGravityAccMag-mean()"      
* "tGravityAccMag-std()"       
* "tBodyAccJerkMag-mean()"     
* "tBodyAccJerkMag-std()"      
* "tBodyGyroMag-mean()"        
* "tBodyGyroMag-std()"         
* "tBodyGyroJerkMag-mean()"    
* "tBodyGyroJerkMag-std()"     
* "fBodyAcc-mean()-X"          
* "fBodyAcc-mean()-Y"          
* "fBodyAcc-mean()-Z"          
* "fBodyAcc-std()-X"           
* "fBodyAcc-std()-Y"           
* "fBodyAcc-std()-Z"           
* "fBodyAccJerk-mean()-X"      
* "fBodyAccJerk-mean()-Y"      
* "fBodyAccJerk-mean()-Z"      
* "fBodyAccJerk-std()-X"       
* "fBodyAccJerk-std()-Y"       
* "fBodyAccJerk-std()-Z"       
* "fBodyGyro-mean()-X"         
* "fBodyGyro-mean()-Y"         
* "fBodyGyro-mean()-Z"         
* "fBodyGyro-std()-X"          
* "fBodyGyro-std()-Y"          
* "fBodyGyro-std()-Z"          
* "fBodyAccMag-mean()"         
* "fBodyAccMag-std()"          
* "fBodyBodyAccJerkMag-mean()" 
* "fBodyBodyAccJerkMag-std()"  
* "fBodyBodyGyroMag-mean()"    
* "fBodyBodyGyroMag-std()"     
* "fBodyBodyGyroJerkMag-mean()"
* "fBodyBodyGyroJerkMag-std()"
