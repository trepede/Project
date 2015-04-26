---
title: "ReadMe"
author: "Tom Repede"
date: "Saturday, April 25, 2015"
output: html_document
---

There are 4 files in Github:
1. This ReadMe.md
2. A run_analysis.R file that produces:
3. A mean_data.txt file for further processing.
4. A CodeBook.md file that describes the mean_data.txt file


# The run_analysis.R script does the following. 
#
#  0. Downloads and unzips the UCI data
#  1. Merges the training and the test sets to create one data set.
#  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#  3. Uses descriptive activity names to name the activities in the data set
#  4. Appropriately labels the data set with descriptive variable names. 
#  5. From the data set in step 4, creates a second, independent tidy data set with the average 
#     of each variable for each activity and each subject.
#

#
#  0. Download and unzip the UCI data
#

#
#  1. Merge the training and test sets
#
# read results feature names and convert to valid names
# read the training data 
# label the results columns
# combine the 3 training files
# add a "type" column with value "train"

# read the test data
# label the results columns
# combine the 3 testing files
# add a "type" column with value "test"
# combine train and test. add labels to first two columns

#
#  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#

#
#  3. Uses descriptive activity names to name the activities in the data set
#
# read activity names and add to mean_std data set

#
#  4. Appropriately labels the data set with descriptive variable names. 
#
# this was done as part of step 1

#
#  5. From the data set in step 4, creates a second, independent tidy data set with the average 
#     of each variable for each activity and each subject.
#

