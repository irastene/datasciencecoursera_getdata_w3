### Introduction
This project performs an analysis on the data set collected from the 
accelerometers from the Samsung Galaxy S smartphone and outputs a tidy data set.
A full description of the data is available at [this internet site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### Files
This repository includes the following files:
* README.md - this README file;
* run_analysis.R - R script that does the fallowing:
    * merges the training and the test sets to create one data set;
    * extracts only the measurements on the mean and standard deviation for each measurement; 
    * uses descriptive activity names to name the activities in the data set;
    * appropriately labels the data set with descriptive variable names;
    * creates a second, independent tidy data set with the average of each variable for each activity and each subject;
* tidy_data_set.csv - .csv file with tidy data set (output of R script run_analysis.R);
* tidy_data_set.txt - .txt file with tidy data set (output of R script run_analysis.R);
* CodeBook.md - code book that describes the data, the variables and work that was performed to clean up the data.

### Steps before running R script run_analysis.R
Working directory with R script should have directory "UCI HAR Dataset" with unzipped primary data that could be downloaded from [this internet site](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 
