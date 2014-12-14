## Clean Data - Project
## David Hayes - December 2014

## Data Source below already downloaded and unzipped from following link:
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

#
#  Load all Data Sources
#

## Read Activity Meta Data
setwd("c:/R Programming/CleanData/UCI HAR Dataset")
activity <- read.table("activity_labels.txt")   ## 6 rows, 2 Cols


## Read Features Meta Data
features <- read.table("features.txt")          ## 561 rows, 2 Cols


## Read test data - 2947 rows in each file
setwd("c:/R Programming/CleanData/UCI HAR Dataset/test")
x.test <- read.table("X_test.txt")             ## 561 Cols
y.test <- read.table("y_test.txt")             ##   1 Col  6 Unique Values range of 1:6 (Activity)
subject.test <- read.table("subject_test.txt") ##   1 Col  9 Unique Values range of 2:24 (Subject)


## Read train data -  7352 rows in each file
setwd("c:/R Programming/CleanData/UCI HAR Dataset/train")
x.train <- read.table("X_train.txt")             ## 561 Cols
y.train <- read.table("y_train.txt")             ##   1 Col  6 Unique Values range of 1:6 (Activity)
subject.train <- read.table("subject_train.txt") ##   1 Col  21 Unique Values range of 1:30 (Subject)


#
#  Transform data 
#

## Rename Columns
names(y.test) <- "ACTIVITY"
names(y.train) <- "ACTIVITY"
names(subject.test) <- "SUBJECT"
names(subject.train) <- "SUBJECT"


## Create new test data frame to include Subject, Activity and Varaiables 
test.set <- cbind(subject.test, y.test, x.test)

## Create new train data frame to include Subject, Activity and Varaiables 
train.set <- cbind(subject.train, y.train, x.train)

# Step 1 - Merge the test and training data sets to create one data set.
merged.set <- rbind(test.set, train.set)

## Step 3 - Use descriptive activity names to name the activities (link with Activity Meta Data)
merged.set$ACTIVITY <- activity$V2[match(merged.set$ACTIVITY, activity$V1)] 

## Step 4 - Appropriately label the data set with descriptive variable names
merged.set.cols <- c("Subject", "Activity", as.vector(features$V2))
colnames(merged.set) <- merged.set.cols

## Step 2 Identify measurements on the mean and standard deviation and create one data set
mean.std.list <- grep("mean|std", merged.set.cols, ignore.case=TRUE)
one.data.set <- merged.set[c(1,2,mean.std.list)]


## Step 5 - Create a second, independent tidy data set with the average of each variable for
## each activity and each subject.
subject.count <- 1
while (subject.count < 31) {
  subject.n.subset <- subset(one.data.set, Subject==subject.count)
  subject.n.agg <- cbind(subject.count, aggregate(subject.n.subset[,3:88], by=list(subject.n.subset$Activity), mean))
  if (subject.count == 1) {
     tidy.data.set <- subject.n.agg
  }
  else {
     tidy.data.set <- rbind(tidy.data.set, subject.n.agg)
  }
  subject.count <- subject.count + 1
}


## Tidy Column Names (remove round brackets & commas and make more meaninful Subject and Activity Names)
colnames(tidy.data.set) <- gsub("\\(|\\)", "", colnames(tidy.data.set))   ## remove round brackets
colnames(tidy.data.set) <- gsub("\\,|\\)", "", colnames(tidy.data.set))   ## remove commas
colnames(tidy.data.set) <- gsub("subject.count", "Subject", colnames(tidy.data.set))
colnames(tidy.data.set) <- gsub("Group.1", "Activity", colnames(tidy.data.set))


## Write the tidy data set to a text file
write.table(tidy.data.set, file="TidyDataSet.TXT", row.name=FALSE)
