# This script called run_analysis.R does the following. 
#
#  0. Downloads and unzips the UCI data
#  1. Merges the training and the test sets to create one data set.
#  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#  3. Uses descriptive activity names to name the activities in the data set
#  4. Appropriately labels the data set with descriptive variable names. 
#  5. From the data set in step 4, creates a second, independent tidy data set with the average 
#     of each variable for each activity and each subject.
#

library(dplyr)
print(date())

#
#  0. Download and unzip the UCI data
#
fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "uci.zip")
unzip("uci.zip")

#
#  1. Merge the training and test sets
#
# read results feature names and convert to valid names
cnames <- read.table("UCI HAR dataset/features.txt")
valid_column_names <- make.names(cnames[,2], unique=TRUE, allow_ = TRUE)

# read the training data 
train_subject <- read.table("UCI HAR dataset/train/subject_train.txt") 
train_y <- read.table("UCI HAR dataset/train/y_train.txt")  
train_x <- read.table("UCI HAR dataset/train/X_train.txt") 
# label the results columns
colnames(train_x) <- valid_column_names
# combine the 3 training files
train_results <- cbind(train_subject, train_y, train_x)
# add a "type" column with value "train"
train_results$type <- "train"

# read the test data
test_subject <- read.table("UCI HAR dataset/test/subject_test.txt")   
test_y <- read.table("UCI HAR dataset/test/y_test.txt")   
test_x <- read.table("UCI HAR dataset/test/X_test.txt")  
# label the results columns
colnames(test_x) <- valid_column_names
# combine the 3 testing files
test_results <- cbind(test_subject, test_y, test_x)
# add a "type" column with value "test"
test_results$type <- "test"

# combine train and test. add labels to first two columns
results <- rbind(train_results, test_results)
names(results)[1:2] <- c("subject","activity")


#
#  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#
mean_std_results <- select(results, subject, activity, type, contains("mean"), contains("std"))


#
#  3. Uses descriptive activity names to name the activities in the data set
#
# read activity names and add to mean_std data set
anames <- read.table("UCI HAR dataset/activity_labels.txt")
names(anames)[2] <- "activity_name"
merge1 <- merge(mean_std_results,anames,by.x="activity", by.y="V1", all.x)
mean_std_results <- select(merge1, -activity)


#
#  4. Appropriately labels the data set with descriptive variable names. 
#
# this was done as part of step 1


#
#  5. From the data set in step 4, creates a second, independent tidy data set with the average 
#     of each variable for each activity and each subject.
#
no_type <- select(mean_std_results, -type)
mean_data <- no_type %>% group_by(activity_name, subject) %>% summarise_each(funs(mean))
write.table(mean_data, file="mean_data.txt", row.name=FALSE)
