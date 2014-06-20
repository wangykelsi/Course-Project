CODEBOOK v1.0
==============
In this markdown file, all the data object produced in the process of run_analysis.R will be introduced.

### Raw Datasets
1. **traindata**, read from train/X_train.txt, training data of 561 features   
    7352 obs. of 561 variables, with no colomn names.
2. **testdata**, read from test/X_test.txt, test data of 561 features   
    2947 obs. of 561 variables, with no colomn names.
3. **trainlabel**, read from train/y_train.txt, activity coresponding to traindata   
    7352 obs. of 1 variable, with colomn name: No.
4. **testlabel**, read from test/y_test.txt, activity coresponding to the testdata   
    2947 obs. of 1 variable, with colomn name: No.
5. **features**, read from features.txt, names of 561 recorded features   
    561 obs. of 2 variables, with colomn name: No, Name
6. **trainsubject**, read from train/subject_train.txt, subject records coresponding to traindata   
    7352 obs. of 1 variable, with colomn name: subject
7. **testsubject**, read from test/subject_test.txt, subject records coresponding to testdata    
    2947 obs. of 1 variable, with colomn name: subject
8. **labelset**, read from activity_labels.txt, names of acitities recorded   
    6 obs. of 2 variable, with colomn name: No, Name 

### Merged data
* **wholeset**   
    Merged by traindata and testdata, and add column names according to feature with "-" all taken off    
    10299 obs. of 561 variables  

### Tidy dataset 1
* **tidyset1**  
    Extract wholeset by names with "mean()" or "std()" in it   
    Tack off "()" from the colomn names    
    Add subject and activity colomn to the extracted dataset   
    10299 obs. of 68 variables   
    variables:   
    * **subject** -  The identifier of the subject who carried out the experiment                 
    * **activity** - The activity label   
        Factor: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 
    * tBodyAccmeanX - **Origin value** from raw data set, while the meaning of it refers to **The Meaning of Features**, as the next 65 variables
    * tBodyAccmeanY
    * tBodyAccmeanZ
    * tGravityAccmeanX
    * tGravityAccmeanY
    * tGravityAccmeanZ
    * tBodyAccJerkmeanX
    * tBodyAccJerkmeanY
    * tBodyAccJerkmeanZ
    * tBodyGyromeanX
    * tBodyGyromeanY
    * tBodyGyromeanZ
    * tBodyGyroJerkmeanX
    * tBodyGyroJerkmeanY
    * tBodyGyroJerkmeanZ
    * tBodyAccMagmean
    * tGravityAccMagmean
    * tBodyAccJerkMagmean
    * tBodyGyroMagmean
    * tBodyGyroJerkMagmean
    * fBodyAccmeanX
    * fBodyAccmeanY
    * fBodyAccmeanZ
    * fBodyAccJerkmeanX
    * fBodyAccJerkmeanY
    * fBodyAccJerkmeanZ
    * fBodyGyromeanX
    * fBodyGyromeanY
    * fBodyGyromeanZ
    * fBodyAccMagmean
    * fBodyBodyAccJerkMagmean
    * fBodyBodyGyroMagmean
    * fBodyBodyGyroJerkMagmean
    * tBodyAccstdX
    * tBodyAccstdY
    * tBodyAccstdZ
    * tGravityAccstdX
    * tGravityAccstdY
    * tGravityAccstdZ
    * tBodyAccJerkstdX
    * tBodyAccJerkstdY
    * tBodyAccJerkstdZ
    * tBodyGyrostdX
    * tBodyGyrostdY
    * tBodyGyrostdZ
    * tBodyGyroJerkstdX
    * tBodyGyroJerkstdY
    * tBodyGyroJerkstdZ
    * tBodyAccMagstd
    * tGravityAccMagstd
    * tBodyAccJerkMagstd
    * tBodyGyroMagstd
    * tBodyGyroJerkMagstd
    * fBodyAccstdX
    * fBodyAccstdY
    * fBodyAccstdZ
    * fBodyAccJerkstdX
    * fBodyAccJerkstdY
    * fBodyAccJerkstdZ
    * fBodyGyrostdX
    * fBodyGyrostdY
    * fBodyGyrostdZ
    * fBodyAccMagstd
    * fBodyBodyAccJerkMagstd
    * fBodyBodyGyroMagstd
    * fBodyBodyGyroJerkMagstd
    
### The final Tidy Dataset
* **tidyset2**
    180 obs. of 68 variables
    variables:   
    * **subject** -  The identifier of the subject who carried out the experiment                 
    * **activity** - The activity label   
        Factor: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 
    * tBodyAccmeanX - The **mean value** for each activity and each subject, while the meaning of it refers to **The Meaning of Features**, as the next 65 variables
    * tBodyAccmeanY
    * tBodyAccmeanZ
    * tGravityAccmeanX
    * tGravityAccmeanY
    * tGravityAccmeanZ
    * tBodyAccJerkmeanX
    * tBodyAccJerkmeanY
    * tBodyAccJerkmeanZ
    * tBodyGyromeanX
    * tBodyGyromeanY
    * tBodyGyromeanZ
    * tBodyGyroJerkmeanX
    * tBodyGyroJerkmeanY
    * tBodyGyroJerkmeanZ
    * tBodyAccMagmean
    * tGravityAccMagmean
    * tBodyAccJerkMagmean
    * tBodyGyroMagmean
    * tBodyGyroJerkMagmean
    * fBodyAccmeanX
    * fBodyAccmeanY
    * fBodyAccmeanZ
    * fBodyAccJerkmeanX
    * fBodyAccJerkmeanY
    * fBodyAccJerkmeanZ
    * fBodyGyromeanX
    * fBodyGyromeanY
    * fBodyGyromeanZ
    * fBodyAccMagmean
    * fBodyBodyAccJerkMagmean
    * fBodyBodyGyroMagmean
    * fBodyBodyGyroJerkMagmean
    * tBodyAccstdX
    * tBodyAccstdY
    * tBodyAccstdZ
    * tGravityAccstdX
    * tGravityAccstdY
    * tGravityAccstdZ
    * tBodyAccJerkstdX
    * tBodyAccJerkstdY
    * tBodyAccJerkstdZ
    * tBodyGyrostdX
    * tBodyGyrostdY
    * tBodyGyrostdZ
    * tBodyGyroJerkstdX
    * tBodyGyroJerkstdY
    * tBodyGyroJerkstdZ
    * tBodyAccMagstd
    * tGravityAccMagstd
    * tBodyAccJerkMagstd
    * tBodyGyroMagstd
    * tBodyGyroJerkMagstd
    * fBodyAccstdX
    * fBodyAccstdY
    * fBodyAccstdZ
    * fBodyAccJerkstdX
    * fBodyAccJerkstdY
    * fBodyAccJerkstdZ
    * fBodyGyrostdX
    * fBodyGyrostdY
    * fBodyGyrostdZ
    * fBodyAccMagstd
    * fBodyBodyAccJerkMagstd
    * fBodyBodyGyroMagstd
    * fBodyBodyGyroJerkMagstd
    
### The Meaning of Features
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

* mean means average value 
* std means standard deviation value
