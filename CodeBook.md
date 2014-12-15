Tidy Data Set CodeBook
======================


CodeBook to support Data Science - Getting and Cleaning Data Project.

The **tidy.data.set** was created as 180 X 88 ( 30 subjects * 6 activities= 180 rows X 86 measurement variables + 2 categorical variables).

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

The following are the items within the **tidy.data.set** *dataframe*.


**Subject**   The individual to which the measurements apply to (in range of 1 to 30).

**Activity**  The Activity undertaken is a factor (6 different values) - was transformed from an ActivityID:
  + LAYING
  + SITTING
  + STANDING
  + WALKING
  + WALKING_DOWNSTAIRS
  + WALKING_UPSTAIRS

**time.BodyAcc.mean.X**

**time.BodyAcc.mean.Y**  

**time.BodyAcc.mean.Z**    

**time.BodyAcc.std.X**               

**time.BodyAcc.std.Y**   

**time.BodyAcc.std.Z**      

**time.GravityAcc.mean.X**           

**time.GravityAcc.mean.Y**  

**time.GravityAcc.mean.Z**      

**time.GravityAcc.std.X**            

**time.GravityAcc.std.Y**   

**time.GravityAcc.std.Z**       

**time.BodyAccJerk.mean.X**          

**time.BodyAccJerk.mean.Y** 

**time.BodyAccJerk.mean.Z**       

**time.BodyAccJerk.std.X**           

**time.BodyAccJerk.std.Y**    

**time.BodyAccJerk.std.Z**        

**time.BodyGyro.mean.X**             

**time.BodyGyro.mean.Y**      

**time.BodyGyro.mean.Z**          

**time.BodyGyro.std.X**              

**time.BodyGyro.std.Y**       

**time.BodyGyro.std.Z**             

**time.BodyGyroJerk.mean.X**         

**time.BodyGyroJerk.mean.Y**   

**time.BodyGyroJerk.mean.Z**        

**time.BodyGyroJerk.std.X**          

**time.BodyGyroJerk.std.Y**   

**time.BodyGyroJerk.std.Z**        

**time.BodyAccMag.mean**             

**time.BodyAccMag.std**       

**time.GravityAccMag.mean**        

**time.GravityAccMag.std**           

**time.BodyAccJerkMag.mean**   

**time.BodyAccJerkMag.std**         

**time.BodyGyroMag.mean**            

**time.BodyGyroMag.std**       

**time.BodyGyroJerkMag.mean**      

**time.BodyGyroJerkMag.std**         

**freq.BodyAcc.mean.X**      

**freq.BodyAcc.mean.Y**           

**freq.BodyAcc.mean.Z**              

**freq.BodyAcc.std.X**       

**freq.BodyAcc.std.Y**            

**freq.BodyAcc.std.Z**               

**freq.BodyAcc.meanFreq.X**     

**freq.BodyAcc.meanFreq.Y**          

**freq.BodyAcc.meanFreq.Z**          

**freq.BodyAccJerk.mean.X**    

**freq.BodyAccJerk.mean.Y**         

**freq.BodyAccJerk.mean.Z**          

**freq.BodyAccJerk.std.X**     

**freq.BodyAccJerk.std.Y**           

**freq.BodyAccJerk.std.Z**           

**freq.BodyAccJerk.meanFreq.X**  

**freq.BodyAccJerk.meanFreq.Y**     

**freq.BodyAccJerk.meanFreq.Z**      

**freq.BodyGyro.mean.X**       

**freq.BodyGyro.mean.Y**            

**freq.BodyGyro.mean.Z**             

**freq.BodyGyro.std.X**        

**freq.BodyGyro.std.Y**            

**freq.BodyGyro.std.Z**              

**freq.BodyGyro.meanFreq.X**  

**freq.BodyGyro.meanFreq.Y**       

**freq.BodyGyro.meanFreq.Z**         

**freq.BodyAccMag.mean**      

**freq.BodyAccMag.std**            

**freq.BodyAccMag.meanFreq**         

**freq.BodyAccJerkMag.mean**   

**freq.BodyAccJerkMag.std**        

**freq.BodyAccJerkMag.meanFreq**     

**freq.BodyGyroMag.mean**      

**freq.BodyGyroMag.std**            

**freq.BodyGyroMag.meanFreq**        

**freq.BodyGyroJerkMag.mean**  

**freq.BodyGyroJerkMag.std**        

**freq.BodyGyroJerkMag.meanFreq**    

**angletBodyAccMeangravity**  

**angletBodyAccJerkMeangravityMean**

**angletBodyGyroMeangravityMean**   

**angletBodyGyroJerkMeangravityMean** 

**angleXgravityMean**          

**angleYgravityMean**


## Units 

Features are normalized and bounded within [-1,1].
