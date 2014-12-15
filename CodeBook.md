Tidy Data Set CodeBook
======================


CodeBook to support Data Science - Getting and Cleaning Data Project.

The **tidy.data.set** is created as 180 X 88 ( 30 subjects * 6 activities= 180 rows X 86 measurement variables + 2 categorical variables).

## Key Data Transformations

The following key transformations were applied to **Column Headings** to make them legal Column Names:

1. Removal of round brackets "**()**"

2. Removal of commas "**,**"

3. Removal of dashes "**-**"


The following key transformations were applied to **Column Headings** to aid readability:

4. Making "**Subject**" and "**Activity**" names clearer.

5. Replacing initial "f" with "**freq.**"

6. Replacing initial "t" with "**time.**"

7. Removing duplicate "**Body**"



## Data Items

The following are the items within the **tidy.data.set** *dataframe*.


**Subject**   The individual to which the measurements apply to (in range of 1 to 30).

**Activity**  The Activity undertaken (6 different values):
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

X axis in standard gravity units 'g'

The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.
 
Features are normalized and bounded within [-1,1].
