## 

## Features list:

Features names have been preserved from the original dataset as they are enough descriptive of the source and how have been processed originally in order to be included in the dataset.

**Activity**

Character string

Description of the activity performed while measuring the variables.
Can be any of the following "Walking","Walking Upstairs","Walking Downstairs","Sitting","Standing","Laying".

**Subject**

Numeric

Identifier of the subject performing the measure regardless of the activity. Can be a number between 1 and 30

In the final tidy dataset all variables are averaged for each subject and activity, so there is a variable vector for each available combination of those, i.e.: 6 activities x 30 subjects -> 180 vectors

Accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ are time domain signals (prefix 't' to denote time) captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz:

body part of linear acceleration from accelerometer for each axis,
time domain mean:
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z

body part of linear acceleration from accelerometer for each axis,
time domain standard deviation:
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z

gravity part of linear acceleration from accelerometer for each axis,
time domain mean: 
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z

gravity part of linear acceleration from accelerometer for each axis,
time domain standard deviation: 
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ):

body part time derivate of linear acceleration from accelerometer for each axis,
time domain mean:
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z

body part time derivate of linear acceleration from accelerometer for each axis,
time domain standard deviation: 
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z

body part of angular velocity from gyroscope for each axis,
time domain mean:
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z

body part of angular velocity from gyroscope for each axis,
time domain standard deviation:
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z

body part time derivate of angular velocity from gyroscope for each axis,
time domain mean:
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z

body part time derivate of angular velocity from gyroscope for each axis,
time domain standard deviation:
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z

body part of linear acceleration from accelerometer, magnitude,
time domain mean:
tBodyAccMag-mean()
body part of linear acceleration from accelerometer, magnitude,
time domain standard deviation:
tBodyAccMag-std()

gravity part of linear acceleration from accelerometer, magnitude,
time domain mean:
tGravityAccMag-mean()
gravity part of linear acceleration from accelerometer, magnitude,
time domain standard deviation:
tGravityAccMag-std()

time domain, 
tBodyAccJerkMag-mean()
time domain, 
tBodyAccJerkMag-std()

time domain, 
tBodyGyroMag-mean()
time domain, 
tBodyGyroMag-std()

time domain, 
tBodyGyroJerkMag-mean()
time domain, 
tBodyGyroJerkMag-std()

frequency domain, 
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z

frequency domain, 
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z

frequency domain, 
fBodyAcc-meanFreq()-X
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z

frequency domain, 
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z

frequency domain, 
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z

frequency domain, 
fBodyAccJerk-meanFreq()-X
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z

frequency domain, 
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z

frequency domain, 
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z

frequency domain, 
fBodyGyro-meanFreq()-X
fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z

frequency domain, 
fBodyAccMag-mean()
frequency domain, 
fBodyAccMag-std()

frequency domain, 
fBodyAccMag-meanFreq()

frequency domain, 
fBodyBodyAccJerkMag-mean()

frequency domain, 
fBodyBodyAccJerkMag-std()
frequency domain, 
fBodyBodyAccJerkMag-meanFreq()

frequency domain, 
fBodyBodyGyroMag-mean()
frequency domain, 
fBodyBodyGyroMag-std()
frequency domain, 
fBodyBodyGyroMag-meanFreq()

frequency domain, 
fBodyBodyGyroJerkMag-mean()
frequency domain, 
fBodyBodyGyroJerkMag-std()
frequency domain, 
fBodyBodyGyroJerkMag-meanFreq()