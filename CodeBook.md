Tidy Data Set CodeBook
======================


CodeBook to support Data Science - Getting and Cleaning Data Project.

The **tidy.data.set** *data.frame* was created as 180 *rows* X 88 *columns* ( 30 subjects * 6 activities = 180 rows X 86 measurement variables + 2 categorical variables).

## Key Data Transformations

After ingesting the raw data files the corresponding Subject and Activity Ids were joined to the related Measurement Column Variables for both Train and Test Data Sets using **cbind** function. The Train and Test Data set rows were then joined together using **rbind** function. The Activity Id was replaces with the textual equivalent (e.g. **1** became **WALKING**, **2** became **WALKING_UPSTAIRS**, **3** - **WALKING_DOWNSTAIRS**, **4 SITTING**, **5 STANDING**, **6 LAYING**).


The following key transformations were applied to **Column Headings** to make them *legal* Column Names:

1. Removal of round brackets "**()**"

2. Removal of commas "**,**"

3. Removal of dashes "**-**"


The following key transformations were applied to **Column Headings** to aid *readability*:

4. Making "**Subject**" and "**Activity**" names clearer.

5. Replacing initial "f" with "**freq.**"

6. Replacing initial "t" with "**time.**"

7. Removing duplicate "**Body**"


The following transformations were applied to the *Measurement Variables*:

1. Only selecting those Variable which contained either **mean** or **std** (ignoring case). This reduced the number of column measurement variables from 561 to 86.

2. Grouping variables by both Subject and Activity (reducing no rows from 10299 to 180); each Subject (30 Subjects) having 6 rows (1 for each Activity).


## Data Items

### The following are the items within the **tidy.data.set** *data.frame*.


**Subject**   The individual subject to which the measurements apply to (in range of 1 to 30); *numeric*

**Activity**  The Activity undertaken is a *factor* (6 different values) - was transformed from an ActivityID:
  + LAYING
  + SITTING
  + STANDING
  + WALKING
  + WALKING_DOWNSTAIRS
  + WALKING_UPSTAIRS


The **Measurement Features** below for the **tidy.data.set** data.frame are *numeric*, normalized and bounded within [-1,1]. The Columns names have been kept short with abbreviations (**Gyro** - Gyroscope; **Acc** - Accelerometer). **Jerk** is the rate of change of acceleration:

**Mean.time.BodyAcc.mean.X**

**Mean.time.BodyAcc.mean.Y**  

**Mean.time.BodyAcc.mean.Z**    

**Mean.time.BodyAcc.std.X**               

**Mean.time.BodyAcc.std.Y**   

**Mean.time.BodyAcc.std.Z**      

**Mean.time.GravityAcc.mean.X**           

**Mean.time.GravityAcc.mean.Y**  

**Mean.time.GravityAcc.mean.Z**      

**Mean.time.GravityAcc.std.X**            

**Mean.time.GravityAcc.std.Y**   

**Mean.time.GravityAcc.std.Z**       

**Mean.time.BodyAccJerk.mean.X**          

**Mean.time.BodyAccJerk.mean.Y** 

**Mean.time.BodyAccJerk.mean.Z**       

**Mean.time.BodyAccJerk.std.X**           

**Mean.time.BodyAccJerk.std.Y**    

**Mean.time.BodyAccJerk.std.Z**        

**Mean.time.BodyGyro.mean.X**             

**Mean.time.BodyGyro.mean.Y**      

**Mean.time.BodyGyro.mean.Z**          

**Mean.time.BodyGyro.std.X**              

**Mean.time.BodyGyro.std.Y**       

**Mean.time.BodyGyro.std.Z**             

**Mean.time.BodyGyroJerk.mean.X**         

**Mean.time.BodyGyroJerk.mean.Y**   

**Mean.time.BodyGyroJerk.mean.Z**        

**Mean.time.BodyGyroJerk.std.X**          

**Mean.time.BodyGyroJerk.std.Y**   

**Mean.time.BodyGyroJerk.std.Z**        

**Mean.time.BodyAccMag.mean**             

**Mean.time.BodyAccMag.std**       

**Mean.time.GravityAccMag.mean**        

**Mean.time.GravityAccMag.std**           

**Mean.time.BodyAccJerkMag.mean**   

**Mean.time.BodyAccJerkMag.std**         

**Mean.time.BodyGyroMag.mean**            

**Mean.time.BodyGyroMag.std**       

**Mean.time.BodyGyroJerkMag.mean**      

**Mean.time.BodyGyroJerkMag.std**         

**Mean.freq.BodyAcc.mean.X**      

**Mean.freq.BodyAcc.mean.Y**           

**Mean.freq.BodyAcc.mean.Z**              

**Mean.freq.BodyAcc.std.X**       

**Mean.freq.BodyAcc.std.Y**            

**Mean.freq.BodyAcc.std.Z**               

**Mean.freq.BodyAcc.meanFreq.X**     

**Mean.freq.BodyAcc.meanFreq.Y**          

**Mean.freq.BodyAcc.meanFreq.Z**          

**Mean.freq.BodyAccJerk.mean.X**    

**Mean.freq.BodyAccJerk.mean.Y**         

**Mean.freq.BodyAccJerk.mean.Z**          

**Mean.freq.BodyAccJerk.std.X**     

**Mean.freq.BodyAccJerk.std.Y**           

**Mean.freq.BodyAccJerk.std.Z**           

**Mean.freq.BodyAccJerk.meanFreq.X**  

**Mean.freq.BodyAccJerk.meanFreq.Y**     

**Mean.freq.BodyAccJerk.meanFreq.Z**      

**Mean.freq.BodyGyro.mean.X**       

**Mean.freq.BodyGyro.mean.Y**            

**Mean.freq.BodyGyro.mean.Z**             

**Mean.freq.BodyGyro.std.X**        

**Mean.freq.BodyGyro.std.Y**            

**Mean.freq.BodyGyro.std.Z**              

**Mean.freq.BodyGyro.meanFreq.X**  

**Mean.freq.BodyGyro.meanFreq.Y**       

**Mean.freq.BodyGyro.meanFreq.Z**         

**Mean.freq.BodyAccMag.mean**      

**Mean.freq.BodyAccMag.std**            

**Mean.freq.BodyAccMag.meanFreq**         

**Mean.freq.BodyAccJerkMag.mean**   

**Mean.freq.BodyAccJerkMag.std**        

**Mean.freq.BodyAccJerkMag.meanFreq**     

**Mean.freq.BodyGyroMag.mean**      

**Mean.freq.BodyGyroMag.std**            

**Mean.freq.BodyGyroMag.meanFreq**        

**Mean.freq.BodyGyroJerkMag.mean**  

**Mean.freq.BodyGyroJerkMag.std**        

**Mean.freq.BodyGyroJerkMag.meanFreq**    

**Mean.angletBodyAccMeangravity**  

**Mean.angletBodyAccJerkMeangravityMean**

**Mean.angletBodyGyroMeangravityMean**   

**Mean.angletBodyGyroJerkMeangravityMean** 

**Mean.angleXgravityMean**          

**Mean.angleYgravityMean**
