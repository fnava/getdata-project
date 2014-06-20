## 

## Features list:

**All features names have been preserved from the original dataset as they are enough descriptive of the source and how have been processed originally in order to be included in the dataset.**

* Activity

Type: Character string

Description of the activity performed while measuring the variables.
Can be any of the following 

1. "Walking"
2. "Walking Upstairs"
3. "Walking Downstairs"
4. "Sitting"
5. "Standing"
6. "Laying"**.

* Subject

Type: Numeric

Identifier of the subject performing the measure regardless of the activity. Can be a number between 1 and 30

In the final tidy dataset all variables are averaged for each subject and activity, so there is a variable vector for each available combination of those, i.e.: 6 activities x 30 subjects -> 180 vectors

### Measurements:

**Accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ are time domain signals (prefix 't' to denote time) captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz**


body part of linear acceleration from accelerometer for each axis,
time domain mean:
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z

body part of linear acceleration from accelerometer for each axis,
time domain standard deviation:
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z

gravity part of linear acceleration from accelerometer for each axis,
time domain mean: 
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z

gravity part of linear acceleration from accelerometer for each axis,
time domain standard deviation: 
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z

**Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ)**

body part time derivate of linear acceleration from accelerometer for each axis,
time domain mean:
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z

body part time derivate of linear acceleration from accelerometer for each axis,
time domain standard deviation: 
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z

body part of angular velocity from gyroscope for each axis,
time domain mean:
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z

body part of angular velocity from gyroscope for each axis,
time domain standard deviation:
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z

body part time derivate of angular velocity from gyroscope for each axis,
time domain mean:
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z

body part time derivate of angular velocity from gyroscope for each axis,
time domain standard deviation:
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z

**Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag)**

body part of linear acceleration from accelerometer, magnitude,
time domain mean:
* tBodyAccMag-mean()

body part of linear acceleration from accelerometer, magnitude,
time domain standard deviation:
* tBodyAccMag-std()

gravity part of linear acceleration from accelerometer, magnitude,
time domain mean:
* tGravityAccMag-mean()

gravity part of linear acceleration from accelerometer, magnitude,
time domain standard deviation:
* tGravityAccMag-std()

body part time derivate of linear acceleration from accelerometer, magnitude, time domain mean:
* tBodyAccJerkMag-mean()

body part time derivate of linear acceleration from accelerometer, magnitude, time domain standard deviation:
* tBodyAccJerkMag-std()

body part of angular velocity from gyroscope, magnitude,
time domain mean: 
* tBodyGyroMag-mean()

body part of angular velocity from gyroscope, magnitude,
time domain standard deviation: 
* tBodyGyroMag-std()

body part time derivate of angular velocity from gyroscope, magnitude, time domain mean:
* tBodyGyroJerkMag-mean()

body part time derivate of angular velocity from gyroscope, magnitude, time domain standard deviation:
* tBodyGyroJerkMag-std()

**Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency domain signals (denoted by a begining "f" letter)**

frequency domain, body part of linear acceleration from accelerometer for each axis, frequency domain mean:
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z

frequency domain, body part of linear acceleration from accelerometer for each axis, frequency domain, standard deviation:
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z

frequency domain, body part of linear acceleration from accelerometer for each axis, frequency domain mean: 
* fBodyAcc-meanFreq()-X
* fBodyAcc-meanFreq()-Y
* fBodyAcc-meanFreq()-Z

body part time derivate of linear acceleration from accelerometer for each axis, frequency domain mean: 
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z

body part time derivate of linear acceleration from accelerometer for each axis, frequency domain, standard deviation: 
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z

body part time derivate of linear acceleration from accelerometer for each axis, frequency domain mean:
* fBodyAccJerk-meanFreq()-X
* fBodyAccJerk-meanFreq()-Y
* fBodyAccJerk-meanFreq()-Z

body part of angular velocity from gyroscope for each axis, frequency domain mean:
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z

body part of angular velocity from gyroscope for each axis, frequency domain mean, frequency domain standard deviation: 
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z

body part of angular velocity from gyroscope for each axis, frequency domain mean:
* fBodyGyro-meanFreq()-X
* fBodyGyro-meanFreq()-Y
* fBodyGyro-meanFreq()-Z

body part of linear acceleration from accelerometer, magnitude, frequency domain mean: 
* fBodyAccMag-mean()

body part of linear acceleration from accelerometer, magnitude, frequency domain mean, frequency domain standard deviation: 
* fBodyAccMag-std()

body part of linear acceleration from accelerometer, magnitude, frequency domain mean:
* fBodyAccMag-meanFreq()

body part time derivate of linear acceleration from accelerometer, magnitude, frequency domain mean:
* fBodyBodyAccJerkMag-mean()

body part time derivate of linear acceleration from accelerometer, magnitude, frequency domain standard deviation:
* fBodyBodyAccJerkMag-std()

body part time derivate of linear acceleration from accelerometer, magnitude, frequency domain mean:
* fBodyBodyAccJerkMag-meanFreq()

body part of angular velocity from gyroscope, magnitude,
frequency domain mean:
* fBodyBodyGyroMag-mean()

body part of angular velocity from gyroscope, magnitude,
frequency domain standar deviation:
* fBodyBodyGyroMag-std()

body part of angular velocity from gyroscope, magnitude,
frequency domain mean:
* fBodyBodyGyroMag-meanFreq()

body part time derivate of angular velocity from gyroscope, magnitude, frequency domain mean:
* fBodyBodyGyroJerkMag-mean()

body part time derivate of angular velocity from gyroscope, magnitude, frequency domain standard deviation:
* fBodyBodyGyroJerkMag-std()

body part time derivate of angular velocity from gyroscope, magnitude, frequency domain mean:
* fBodyBodyGyroJerkMag-meanFreq()