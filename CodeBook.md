## Transformation discussion:
## -------------------------
## The activity labels was read from (activity_labels.txt) 
## Actual data test and train dataset activity ids read from (y_train.txt/y_test.txt)
## The activities labels was then merged with the respectice train and test data ids seperately
## Variable name data was read from (features.txt) and processed to remove special characters
## and duplicates was renamed so dplyr operation was possible and following tidy data principles.
## Main data sets was read (X_train.txt/X_test.txt) and variable names applied
## Prepared variable names was applied to the datasets
## Subject, activity and main data was cbinded together
## Finally test and train data was rbinded to form the full merged dataset

## All columns that had std() and mean() functions mentioned in the variable names was selected
## The resulting dataset was the grouped by activityname, id and subject and then summarized over 
## all the remaining variable using mean().
## This produced the final output dataset summarized by activity,subject using mean as function.


## Output dataset variable names and source description
##	varnum	variable name		source
##	------	-------------		------
##	1	activityname		activity_labels.txt
##	2	activityid		y_train.txt/y_test.txt
##	3	subject	subject_	subject_train/subject_test.txt
##	4	tbodyacc_mean_x		X_train/X_test.txt
##	5	tbodyacc_mean_y		X_train/X_test.txt
##	6	tbodyacc_mean_z		X_train/X_test.txt
##	7	tbodyacc_std_x		X_train/X_test.txt
##	8	tbodyacc_std_y		X_train/X_test.txt
##	9	tbodyacc_std_z		X_train/X_test.txt
##	10	tgravityacc_mean_x	X_train/X_test.txt
##	11	tgravityacc_mean_y	X_train/X_test.txt
##	12	tgravityacc_mean_z	X_train/X_test.txt
##	13	tgravityacc_std_x	X_train/X_test.txt
##	14	tgravityacc_std_y	X_train/X_test.txt
##	15	tgravityacc_std_z	X_train/X_test.txt
##	16	tbodyaccjerk_mean_x	X_train/X_test.txt
##	17	tbodyaccjerk_mean_y	X_train/X_test.txt
##	18	tbodyaccjerk_mean_z	X_train/X_test.txt
##	19	tbodyaccjerk_std_x	X_train/X_test.txt
##	20	tbodyaccjerk_std_y	X_train/X_test.txt
##	21	tbodyaccjerk_std_z	X_train/X_test.txt
##	22	tbodygyro_mean_x	X_train/X_test.txt
##	23	tbodygyro_mean_y	X_train/X_test.txt
##	24	tbodygyro_mean_z	X_train/X_test.txt
##	25	tbodygyro_std_x		X_train/X_test.txt
##	26	tbodygyro_std_y		X_train/X_test.txt
##	27	tbodygyro_std_z		X_train/X_test.txt
##	28	tbodygyrojerk_mean_x	X_train/X_test.txt
##	29	tbodygyrojerk_mean_y	X_train/X_test.txt
##	30	tbodygyrojerk_mean_z	X_train/X_test.txt
##	31	tbodygyrojerk_std_x	X_train/X_test.txt
##	32	tbodygyrojerk_std_y	X_train/X_test.txt
##	33	tbodygyrojerk_std_z	X_train/X_test.txt
##	34	fbodyacc_mean_x		X_train/X_test.txt
##	35	fbodyacc_mean_y		X_train/X_test.txt
##	36	fbodyacc_mean_z		X_train/X_test.txt
##	37	fbodyacc_std_x		X_train/X_test.txt
##	38	fbodyacc_std_y		X_train/X_test.txt
##	39	fbodyacc_std_z		X_train/X_test.txt
##	40	fbodyaccjerk_mean_x	X_train/X_test.txt
##	41	fbodyaccjerk_mean_y	X_train/X_test.txt
##	42	fbodyaccjerk_mean_z	X_train/X_test.txt
##	43	fbodyaccjerk_std_x	X_train/X_test.txt
##	44	fbodyaccjerk_std_y	X_train/X_test.txt
##	45	fbodyaccjerk_std_z	X_train/X_test.txt
##	46	fbodygyro_mean_x	X_train/X_test.txt
##	47	fbodygyro_mean_y	X_train/X_test.txt
##	48	fbodygyro_mean_z	X_train/X_test.txt
##	49	fbodygyro_std_x		X_train/X_test.txt
##	50	fbodygyro_std_y		X_train/X_test.txt
##	51	fbodygyro_std_z		X_train/X_test.txt
