# Getting and Cleaning Data
## Course Project

### Submitted files:

* **README.md** - this file
* **run_analysis.R** - Script which performs the 5 steps requested below (see "Project original description")
* **CodeBook.md** - Description of data transformations and variables
* **X_tmp.csv** - First tidy dataset from steps 1 to 4
* **X_final.txt** - Second tidy dataset with averaged variables as requested in step 5. This file is the one uploaded as attachment to the project results submission page.

R Script must be run having the uncompressed Samsung data in a subdirectory named *"UCI HAR Dataset"*. The tidy datasets are generated in CSV format with quoted characters.

The original feature names have been preserved as they are considered enough descriptive of the origin of each signal:

 * **t/f** prefix to distinguish between time-domain and frecuency domain signals
 * **Body/Gravity** infix to distinguish the result of filtering and obtain the Body/Gravity part of the signals (see CodeBook.md for details)
 * **Acc/Gyro** infix to denote source of signal being Accelerometer or Gyroscope (see CodeBook.md for details)
 * **Jerk** infix to denote time derivative of base signal
 * **X/Y/Z/Mag** infix to denote axis of total magnitude signal
 * **mean/std/meanfreq** to denote mean, standard deviation or frequency weighted average of signal
 
all these variables have been grouped by activity and subject and then averaged with the same weight (mean function).

The activity index has been replaced for a description, with the following convention:

1. "Walking"
2. "Walking Upstairs"
3. "Walking Downstairs"
4. "Sitting"
5. "Standing"
6. "Laying"


### Project original description

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 

1. a tidy data set as described below, 
2. a link to a Github repository with your script for performing the analysis, and 
3. a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 

You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 You should create one R script called run_analysis.R that does the following. 
 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

