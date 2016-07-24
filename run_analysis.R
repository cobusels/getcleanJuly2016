#The goal is to prepare tidy data that can be used for later analysis. 
#You will be graded by your peers on a series of yes/no questions related to the project. 
#You will be required to submit: 
# 1) a tidy data set as described below, 
# 2) a link to a Github repository with your script for performing the analysis, and 
# 3) a code book that describes the variables, the data, and any transformations or work 
# that you performed to clean up the data called CodeBook.md. 
# You should also include a README.md in the repo with your scripts. This repo explains how 
# all of the scripts work and how they are connected.

# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement.
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names.
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#COMMON:
library(dplyr)
#read features (variable names)
features_file <- ("features.txt")
features <- read.table(features_file, stringsAsFactors = FALSE) #variable names

#Process the variable names
#appropriately label columns
proccolnames <- gsub(pattern = "\\(\\)", replacement = "", x = features$V2) %>% 
  gsub(pattern = "\\,|\\(|\\)|\\-", replacement = "_") %>%
  tolower %>%
  make.names(unique=TRUE, allow_ = TRUE)
#proccolnames <- features$V2

#read activity labels (description of activity numeric link codes)
activity_labels_file <- ("activity_labels.txt")
activity_labels <- read.table(activity_labels_file)
colnames(activity_labels) <- c("activityid","activityname")

#------------------------------------------------------------------------------------

#TRAIN Dataset:
#read train data
train_labels_file <- ("./train/y_train.txt") #numeric link to activity
train_x_file = ("./train/X_train.txt") #actual data
train_subj_file = ("./train/subject_train.txt") #subjects as related to the data

train_labels <- read.table(train_labels_file)
train_data <- read.table(file = train_x_file)
train_subj <- read.fwf(train_subj_file,2L)

#assemble train dataset
colnames(train_data) <- proccolnames
colnames(train_labels) <- "activityid"
colnames(train_subj) <- "subject"

activity_temp_train <- merge(train_labels,activity_labels,by.x="activityid",by.y="activityid",all=TRUE)

train_data <- cbind(train_subj, activity_temp_train, train_data) 

#------------------------------------------------------------------------------------

#TEST Dataset:
#read test data
test_labels_file <- ("./test/y_test.txt") #numeric link to activity
test_x_file = ("./test/X_test.txt") #actual data
test_subj_file = ("./test/subject_test.txt") #subjects as related to the data

test_labels <- read.table(test_labels_file)
test_data <- read.table(file = test_x_file)
test_subj <- read.fwf(test_subj_file,2L)

#assemble test dataset
colnames(test_data) <- proccolnames
colnames(test_labels) <- "activityid"
colnames(test_subj) <- "subject"

activity_temp_test <- merge(test_labels,activity_labels,by.x="activityid",by.y="activityid",all=TRUE)

test_data <- cbind(test_subj, activity_temp_test, test_data) 

#-------------------------------------------------------------------------------------
#SETTING TOGETHER(MERGE) TEST and TRAIN:
merged <- rbind(train_data,test_data)

#produce data set with only mean/std
mean_std <- select(merged, subject:activityname, grep("_mean_|_std_", colnames(merged)))

#appropriately names variables: This was done as part of dataset features read-in and processing. 
#No need for further processing

# From the data set in step 4, creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject.
mean_std_summary <- group_by(mean_std, activityname, activityid, subject) %>% 
  summarize_each(funs(mean)) %>%
  arrange(activityid, subject)





