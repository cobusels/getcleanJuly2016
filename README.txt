## Main and only script to run = run_analysis.R
##
## Assumptions: 
## * The Samsung accelerometer (UCI HAR) data is available in the working directory
## * dplyr package installed
## 
## Output:
## This script combines the test and training datasets adds cleaned variable names,
## adds activity data and subject data and finally summarizes only the 
## original std() and mean() labeled columns on activity, subject
##
## Acknowledgement to the data source used in this project:
##-------------------------------------------------
## [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
## This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
## Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
##-------------------------------------------------
