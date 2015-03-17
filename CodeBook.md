# Getting-and-Cleaning-Data-Course-Project

## Short initial data description 
Check ("UCI HAR Dataset/README.txt" and "UCI HAR Dataset/features_info.txt" for more info)

The experiments have been carried out with a group of 30 volunteers (19-48 years). 
Each person performed six activities:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING 
* LAYING
wearing a smartphone (Samsung Galaxy S II) on the waist. 

Following experimental values were captured: 
* 3-axial linear acceleration 
* 3-axial angular velocity 
at a constant rate of 50Hz. 

The obtained dataset has been randomly partitioned into two sets:
* 70% of the volunteers was selected for generating the training data 
* 30% of the volunteers was selected for generating the test data

Following files were used for analysis:
* "UCI HAR Dataset/train/X_train.txt" - Training set
* "UCI HAR Dataset/train/y_train.txt" - Training labels
* "UCI HAR Dataset/train/subject_train.txt" - The subject who performed the activity for train sample (1-30)
* "UCI HAR Dataset/test/X_test.txt" - Test set
* "UCI HAR Dataset/test/y_test.txt" - Test labels
* "UCI HAR Dataset/test/subject_test.txt" - The subject who performed the activity for test sample (1-30)
* "UCI HAR Dataset/activity_labels.txt" - Links the class labels with their activity name
* "UCI HAR Dataset/features.txt" - List of all experimental variables 

## Output tidy data description 

Output data "UCI HAR Dataset/tidydata.txt" is dataframe containing mean values for each activity and 
each participant only for the measurements on the mean and standard deviation for each measurement.

Output dataframe consists of 180 rows and 68 column. First two columns provide information about
type of activity ("activity") and participant id ("subject"). Other column shows mean values mentioned above:

* tBodyAcc-XYZ         - body acceleration signals
* tGravityAcc-XYZ      - gravity acceleration signals
* tBodyAccJerk-XYZ     - body linear acceleration Jerk signals
* tBodyGyro-XYZ        - body angular velocity signals
* tBodyGyroJerk-XYZ    - body angular velocity Jerk signals
* tBodyAccMag          - body acceleration magnitude 
* tGravityAccMag       - gravity acceleration magnitude 
* tBodyAccJerkMag      - body acceleration magnitude Jerk signals
* tBodyGyroMag         - body angular velocity magnitude 
* tBodyGyroJerkMag     - body angular velocity magnitude Jerk signals

   A Fast Fourier Transform (FFT) was applied to some of these signals producing 
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

   The set of variables that were estimated from these signals are:
* mean(): Mean value
* std(): Standard deviation



