# Data
The original data set is obtained from the Human Activity Recognition Using Smartphones Data Set in UCI Machine Learning Repository. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. This kind of data coming from wearable computing is used by companies like Fitbit, Nike, and Jawbone Up racing to develop the most advanced algorithms to attract new users. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for the project are in the following zip file : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip When unzipped they are included in the working directory, in the folder "UCI HAR Dataset". The details of the files included in the zipped file are available in the CodeBook, based on the file features.txt. This folder comprises two more folders named "train" and "test" where the data to be used for the analysis are incuded. This path also includes a folder called "Inertial Signals" which is not included in the dataset.

# Processing
The R script run_data_clean.R creates the output files TidyData.txt and TidyData.csv by:
1. Merge the train and test data sets
2. Extract the columns which pertain to a mean value or a standard deviation value, aswell as the subject ID and activity ID columns
3. Add the activity names corresponding to the activity IDs
4. Modify variable names to be descriptive
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject

# Included Files
The following files are included in the repositor
* The R script "run_data_clean.R"
* The codebook "codebook.md" which describes the variables and data
* The tidy data set in two formats "TidyData.txt" and "TidyData.csv" (the csv format makes it easier to review)
* This "README.md" file
