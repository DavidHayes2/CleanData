CleanData
=========

Repo to support Data Science - Getting and Cleaning Data Project.


## Synopsis

The **purpose** of this project is to collect, work with, and clean a data set.
The **goal** is to prepare tidy data that can be used for later analysis.
Project uses data collected from the accelerometers from the *Samsung Galaxy S* smartphone.

The following key processing steps are undertaken:

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each
measurement.

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names.

5. From the data set in step 4, creates a second, independent tidy data set with
the average of each variable for each activity and each subject.


## Files Delivered

+ **run_analysis.R** - R script (wriiten using **R version 3.1.1** (2014-07-10)) that delivers steps 1 to 5 above

+ **README.md** - this file, explaining how the run_analysis.R works

+ **TidyDataSet.TXT** (in Coursera repository only) - containing Tidy Data Set from step 5 above

+ **CodeBook.md** - a CodeBook that describes the variables, the data, and any transformations.


## Data Sources

Data extracted from the following data source:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Key Raw Data Files processed

+ **activity_labels.txt** - Activity Meta Data (6 rows & 2 columns)

+ **features.txt** - Features Meta Data (561 rows & 2 columns)

+ **X_test.txt** - Test Data (2947 rows & 561 columns)

+ **y_test.txt** - Test Data - Relates to Activity (2947 rows & 1 column)

+ **subject_test.txt** - Test Data  - Relates to Individual Subject (2947 rows & 1 column)

+ **X_train.txt** - Train Data (7352 rows & 561 columns)

+ **y_train.txt** - Train Data - Relates to Activity (7352 rows & 1 column)   

+ **subject_train.txt** -Train Data - Relates to Individual Subject (7352 rows & 1 column)
4

### Working Directories

The base Working Direcrory for Data is: **c:/R Programming/CleanData/UCI HAR Dataset**; this is where the files **activity_labels.txt** and **activity_labels.txt** reside.

Within the subdirectory of **test** within **UCI HAR Dataset** the files **X_test.txt** and **y_test.txt** reside.

Within the subdirectory of **train** within **UCI HAR Dataset** the files **X_train.txt** and **y_train.txt** reside.


## Key Processing Steps

### File Precessing:

1. Load all Data Sources.

### Transform Data:

2.  Create new test data frame to include Subject, Activity and Variables 

3.  Create new train data frame to include Subject, Activity and Variables 

4.  Merge the test and training data sets to create one data set.

5.  Use descriptive activity names to name the activities (link with Activity Meta Data); replacing activity ids in the data with descriptive terms which are words (used **match** function).

6.  Appropriately label the data set with descriptive variable names

7.  Identify measurements on the mean and standard deviation and create one data set (using *grep*). 86 variables were identifed with grep searching for **mean** and **std**.

8.  Create a second (**Data.Frame** called **tidy.data.set**), independent tidy data set with the average (using **mean**) of each variable for each activity and each subject using *aggregate* function. Each Subject is processed individually. Note Each variable measured is in one column, with each different observation of that variable in a different row.

9.  Tidy Column Names (e.g. remove round brackets, dashes & commas and make more meaninful Subject and Activity Names). Specific transformations can be found in the CodeBook

### Output Processing:

10. Write the tidy data set to a text file.


## Instructions to Read File back

The code to read back **tidy.data.set** *data.frame* from Coursera site:

tidy.codebook.url <- "https://s3.amazonaws.com/coursera-uploads/user-538e80937e83af384bec689d/973758/asst-3/6d8f6e50885d11e4805a7fa4508748cc.txt"
download.file(tidy.codebook.url, destfile="tidy.dat")
tidy.data.set <- read.table("tidy.dat", header=TRUE)
