##Code Book

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The variables containing the results of the measurements are as follows:

*activity*	
	Activity performed by the subject
	
*subject*
	ID for the subject in which measurement is performed
	
*tBodyAcc.mean.X*           *tBodyAcc.mean.Y*           *tBodyAcc.mean.Z*\s\s
	Mean of the acceleration measurements in the axis X,Y and Z. Units : Gravity 'g'\s\s\s\s
	
*tBodyAcc.std.X*            *tBodyAcc.std.Y*            *tBodyAcc.std.Z*\s\s
    Standard deviation for the body acceleration measurements in the axis X,Y and Z. Units: Gravity 'g'\s\s\s\s
	
*tGravityAcc.mean.X*        *tGravityAcc.mean.Y*        *tGravityAcc.mean.Z*\s\s
	Mean for the gravity acceleration measurements  in the axis X,Y and Z. Units: Gravity 'g'\s\s\s\s
	
*tGravityAcc.std.X*         *tGravityAcc.std.Y*         *tGravityAcc.std.Z*\s\s
	Standard deviation for the gravity acceleration measurements  in the axis X,Y and Z. Units: Gravity 'g'\s\s\s\s
	
*tBodyAccJerk.mean.X*		*tBodyAccJerk.mean.Y*       *tBodyAccJerk.mean.Z*\s\s
	Mean for the body jerk acceleration measurements in the axis X,Y and Z. Units: Gravity 'g'\s\s\s\s
	
*tBodyAccJerk.std.X*        *tBodyAccJerk.std.Y*        *tBodyAccJerk.std.Z*\s\s       
	Standard deviation for the body jerk acceleration measurements in the axis X,Y and Z. Units: Gravity 'g'\s\s\s\s
	
*tBodyGyro.mean.X*          *tBodyGyro.mean.Y*          *tBodyGyro.mean.Z*\s\s
	Mean for the measurements of the angular velocity in the axis X,Y and Z. Units: rads/sec\s\s\s\s
	
*tBodyGyro.std.X*           *tBodyGyro.std.Y*			*tBodyGyro.std.Z*\s\s
	Standard deviation for the measurements of the angular velocity in the axis X,Y and Z. Units: rads/sec\s\s\s\s
	
*tBodyGyroJerk.mean.X*      *tBodyGyroJerk.mean.Y*      *tBodyGyroJerk.mean.Z*\s\s
	Mean for the measurements of the angular jerk in the axis X,Y and Z. Units: Gravity 'g'\s\s\s\s
	
*tBodyGyroJerk.std.X*		*tBodyGyroJerk.std.Y*       *tBodyGyroJerk.std.Z*\s\s
	Standard deviation for the measurements of the angular jerk in the axis X,Y and Z. Units: Gravity 'g'\s\s\s\s
	
*tBodyAccMag.mean*\s\s
	Mean for the body acceleration. Units: Graviti 'g'\s\s\s\s
	
*tBodyAccMag.std*\s\s
	Standard deviation for the body acceleration. Units: Gravity 'g'\s\s\s\s
	
*tGravityAccMag.mean*\s\s
	Mean for the gravity acceleration. Units: Graviti 'g'\s\s\s\s
	
*tGravityAccMag.std*\s\s
	Standard deviation for the gravity acceleration. Units: Gravity 'g'\s\s\s\s
	
*tBodyAccJerkMag.mean*\s\s      
	Mean for the jerk acceleration. Units: Graviti 'g'\s\s\s\s
	
*tBodyAccJerkMag.std*\s\s
	Standard deviation for the jerk| acceleration. Units: Gravity 'g'\s\s\s\s
	
*tBodyGyroMag.mean*\s\s
	Mean for the angular velocity. Units: rads/sec\s\s\s\s
	
*tBodyGyroMag.std*\s\s
	Standard deviation for the angular velocity. Units: rads/sec\s\s\s\s
	
*tBodyGyroJerkMag.mean*\s\s
	Mean for the jerk gyroscopic acceleration. Units: Gravity 'g'\s\s\s\s
	
*tBodyGyroJerkMag.std*\s\s
	Standard deviation for the jerk gyroscopic acceleration. Units: Gravity 'g'\s\s\s\s

*fBodyAcc.mean.X*           *fBodyAcc.mean.Y*			*fBodyAcc.mean.Z*          
*fBodyAcc.std.X*            *fBodyAcc.std.Y*            *fBodyAcc.std.Z*
*fBodyAccJerk.mean.X*       *fBodyAccJerk.mean.Y*      *fBodyAccJerk.mean.Z*
*fBodyAccJerk.std.X*        *fBodyAccJerk.std.Y*        *fBodyAccJerk.std.Z*
*fBodyGyro.mean.X*			*fBodyGyro.mean.Y*          *fBodyGyro.mean.Z*
*fBodyGyro.std.X*           *fBodyGyro.std.Y*           *fBodyGyro.std.Z*          
*fBodyAccMag.mean*
*fBodyAccMag.std*           
*fBodyBodyAccJerkMag.mean*  
*fBodyBodyAccJerkMag.std*   
*fBodyBodyGyroMag.mean*    
*fBodyBodyGyroMag.std*      
*fBodyBodyGyroJerkMag.mean* 
*fBodyBodyGyroJerkMag.std*\s\s 

These variables correspond to the frequency domain of the measurements described in the precedent part. The prefix "t" denotes time domain, "f" denotes frequency domain.
