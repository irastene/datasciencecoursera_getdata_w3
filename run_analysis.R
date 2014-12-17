rm(list = ls())
library(reshape2)

#===============================================================================
# 1) Read and merge the training and the test datasets
#===============================================================================
# read test and training data
x.test <- read.table("UCI HAR Dataset/test/X_test.txt")
x.train <- read.table("UCI HAR Dataset/train/X_train.txt")
y.test <- read.table("UCI HAR Dataset/test/y_test.txt")
y.train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject.test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject.train <- read.table("UCI HAR Dataset/train/subject_train.txt")

# merge test and training data
x <- rbind(x.test, x.train)
y <- rbind(y.test, y.train)
subject <- rbind(subject.test, subject.train)


#===============================================================================
# 2) Extract only the measurements on the mean and standard deviation 
#    for each measurement. 
#===============================================================================
# find mean and standard deviation columns indexes
features <- read.table("UCI HAR Dataset/features.txt")
col.mean <- grep("mean()", features[,"V2"], fixed = TRUE)
col.std <- grep("std()", features[,"V2"], fixed = TRUE)
col.id <- sort(c(col.mean, col.std)) 

# extract only needed columns 
x <- x[, col.id]


#===============================================================================
# 3) Use descriptive activity names to name the activities in the data set
#===============================================================================
# read descriptive activity names
activity <- read.table("UCI HAR Dataset/activity_labels.txt")

# name activities keeping the same order of the data
y[, "row.order"] <- as.numeric(rownames(y))
y <- merge(y, activity)
y <- y[order(y[, "row.order"]),]
y <- as.character(y[, "V2"])


#===============================================================================
# 4) Appropriately label the data set with descriptive variable names 
#===============================================================================
# bind activities, subjects and measurements in one data frame
data.set <- cbind(y, subject[, "V1"], x) 

# label data set with descriptive variable names
measurements <- as.character(features[,"V2"][col.id])
names(data.set) <- c("activity", "subject", measurements)


#===============================================================================
# 5) From the data set in step 4, create a second, independent tidy data set 
#    with the average of each variable for each activity and each subject
#===============================================================================
# create data set with mean of each variable for each activity and each subject
tidy.data.set <- melt(data.set, c("activity", "subject"))
tidy.data.set <- dcast(tidy.data.set, activity + subject ~ variable, mean)

# save data set to .txt and .csv files
write.table(tidy.data.set, "tidy_data_set.txt", row.names=FALSE)
write.csv(tidy.data.set, "tidy_data_set.csv", row.names=FALSE)