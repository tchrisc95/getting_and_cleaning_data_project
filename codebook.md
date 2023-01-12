# Variable Descriptions
## Original Data set
Variable of the feature vectors, where '-XYZ' is used to denote the signals in the X, Y, and Z directions:
|Variable|Description|
|--------|-------|
|tBodyAcc-X|Acceleration of body in X direction|
|tBodyAcc-Y|Acceleration of body in Y direction|
|tBodyAcc-Z|Acceleration of body in Z direction|
|tGravityAcc-X|Acceleration of gravity in X direction|
|tGravityAcc-Y|Acceleration of gravity in Y direction|
|tGravityAcc-Z|Acceleration of gravity in Z direction|
|tBodyAccJerk-X|Body acceleration jerk for X direction|
|tBodyAccJerk-Y|Body acceleration jerk for Y direction|
|tBodyAccJerk-Z|Body acceleration jerk for Z direction|
|tBodyGyro-X|Body gyroscope measurement for X direction|
|tBodyGyro-Y|Body gyroscope measurement for Y direction|
|tBodyGyro-Z|Body gyroscope measurement for Z direction|
|tBodyGyroJerk-X|Jerk signal of body for X direction|
|tBodyGyroJerk-Y|Jerk signal of body for Y direction|
|tBodyGyroJerk-Z|Jerk signal of body for Z direction|
|tBodyAccMag|Magnitude of body acceleration|
|tGravityAccMag|Magnitutde of gravity acceleration|
|tBodyAccJerkMag|Magnitude of body acceleration jerk|
|tBodyGyroMag|Magnitude of body gyroscope measurement|
|tBodyGyroJerkMag|Magnitude of body gyroscope jerk measurement|
|fBodyAcc-X|Frequency of body acceleration for X direction|
|fBodyAcc-Y|Frequency of body acceleration for Y direction|
|fBodyAcc-Z|Frequency of body acceleration for Z direction|
|fBodyAccJerk-X|Frequency of body acceleration jerk for X direction|
|fBodyAccJerk-Y|Frequency of body acceleration jerk for Y direction|
|fBodyAccJerk-Z|Frequency of body acceleration jerk for Z direction|
|fBodyGyro-X|Frequency of body gyroscope measurement for X direction|
|fBodyGyro-Y|Frequency of body gyroscope measurement for Y direction|
|fBodyGyro-Z|Frequency of body gyroscope measurement for Z direction|
|fBodyAccMag|Frequency of body acceleration magnitude|
|fBodyAccJerkMag|Frequency of body acceleration jerk magnitude|
|fBodyGyroMag|Frequency of body magnitude gyroscope measurement|
|fBodyGyroJerkMag|Frequency of body magnitude gyroscope jerk measurement|

Variables estimated from the signals:
|Variable|Description|
|-------|-------|
|mean()|Mean value|
|std()|Standard deviation|
|mad()|Median absolute deviation|
|max()|Largest value in array|
|min()|Smallest value in array|
|sma()|Signal magnitude area|
|energy()|Energy measure. Sum of the squares divided by the number of values.|
|iqr()|Interquartile range|
|entropy()|Signal entropy|
|arCoeff()|Autorregresion coefficients with Burg order equal to 4|
|correlation()|correlation coefficient between two signals|
|maxInds()|index of the frequency component with largest magnitude|
|meanFreq()|Weighted average of the frequency components to obtain a mean frequency|
|skewness()|skewness of the frequency domain signal|
|kurtosis()|kurtosis of the frequency domain signal|
|bandsEnergy()|Energy of a frequency interval within the 64 bins of the FFT of each window.|
|angle()|Angle between to vectors.|

## TidyData data set
|Variable|Name	Description|
|-----|-----|
|Subject_ID|Subject ID Number, range 1- 30|
|Activity|Activity Name; can take the terms: "Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"|
|AverageMeasurementValue|Mean value measured for each activity name|
|TimeDomainBodyAccelerometerMean-(X,Y,Z)|Mean acceleration of body in (X,Y,Z) direction|
|TimeDomainGravityAccelerometerMean-(X,Y,Z)|Mean acceleration of gravity in (X,Y,Z) direction|
|TimeDomainBodyAccelerometerJerkMean-(X,Y,Z)|Mean body acceleration jerk for X direction|
|TimeDomainBodyGyroscopeMean-(X,Y,Z)|Mean body gyroscope measurement for X direction|
|TimeDomainBodyGyroscopeJerkMean-(X,Y,Z)|Mean jerk signal of body for X direction|
|TimeDomainBodyAccelerometerMagnitudeMean|Mean magnitude of body acceleration|
|TimeDomainGravityAccelerometerMagnitudeMean|Mean magnitutde of gravity acceleration|
|TimeDomainBodyAccelerometerJerkMagnitudeMean|Mean magnitude of body gyroscope jerk measurement|
|TimeDomainBodyGyroscopeMagnitudeMean|Mean magnitude of body gyroscope measurement|
|TimeDomainBodyGyroscopeJerkMagnitudeMean|Mean magnitude of body gyroscope jerk measurement|
|FrequencyDomainBodyAccelerometerMean-(X,Y,Z)|Mean frequency body acceleration for X direction|
|FrequencyDomainBodyAccelerometerMeanFrequency-(X,Y,Z)|Mean frequency of body acceleration for X direction frequency|
|FrequencyDomainBodyAccelerometerJerkMean-(X,Y,Z)|Mean frequency of body acceleration jerk for X direction|
|FrequencyDomainBodyAccelerometerJerkMeanFrequency-(X,Y,Z)|Mean frequency of body acceleration jerk for X direction frequency|
|FrequencyDomainBodyGyroscopeMean-(X,Y,Z)	Mean|frequency of body gyroscope measurement for (X,Y,Z) direction|
|FrequencyDomainBodyGyroscopeMeanFrequency-(X,Y,Z)|Mean frequency of body gyroscope measurement for (X,Y,Z) direction frequency|
|FrequencyDomainBodyAccelerometerMagnitudeMean|Mean frequency of body acceleration magnitude|
|FrequencyDomainBodyAccelerometerMagnitudeMeanFrequency|Mean frequency of body acceleration magnitude frequency|
|FrequencyDomainBodyAccelerometerJerkMagnitudeMean|Mean frequency of body acceleration jerk magnitude|
|FrequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency|Mean frequency of body acceleration jerk magnitude mean|
|FrequencyDomainBodyGyroscopeMagnitudeMean|Mean frequency of body gyoscope magnitude|
|FrequencyDomainBodyGyroscopeMagnitudeMeanFrequency|Mean frequency of body gyoscope magnitude frequency|
|FrequencyDomainBodyGyroscopeJerkMagnitudeMean|Mean frequency of body gyoscope jerk magnitude|
|FrequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency|Mean frequency of body gyoscope jerk magnitude frequency|


