## Tidy Data Course project
## Joy Flowers
## 8-21-15
## install needed packages
install.packages("LaF")
install.packages("plyr")
install.packages("dplyr")
library("LaF")
library("plyr")
library("dplyr")

## 1a) Read in the test files - all have row observations 2947.
fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
rr <- download.file(fileUrl,destfile="UCI-HAR-Dataset.zip",method="curl")
## If using a PC instead of a MAC, use the line below instead of the one above.
## rr <- download.file(fileUrl,destfile="UCI-HAR-Dataset.zip")
dateDownloaded <- date()
unzip("UCI-HAR-Dataset.zip")
fldr <- "UCI HAR Dataset"
sub_test <- read.table(paste(fldr,"/test/subject_test.txt",sep=""),header=FALSE)
names(sub_test) <- "Subject"
sub_test <- mutate(sub_test,Sample_Type="Test") 
Y_test <- read.table(paste(fldr,"/test/Y_test.txt",sep=""),header=FALSE,sep=" ")
names(Y_test) <- "Activity_Num"
cl <- rep(16,times=561)
X_test_tmp <- laf_open_fwf(paste(fldr,"/test/X_test.txt",sep=""), column_widths = cl,
                      column_types=rep("numeric",length(cl))) 
## Temporary column name until features are added
names(X_test_tmp) <- paste("Msmt", 1:ncol(X_test_tmp), sep="")                     
X_tst <- X_test_tmp[,]
X_test <- tbl_df(X_tst)

## 1b) Read in the training files
sub_train <- read.table(paste(fldr,"/train/subject_train.txt",sep=""),header=FALSE)
names(sub_train) <- "Subject"
sub_train <- mutate(sub_train,Sample_Type="Train")
Y_train <- read.table(paste(fldr,"/train/Y_train.txt",sep=""),header=FALSE,sep=" ")
names(Y_train) <- "Activity_Num"
cl <- rep(16,times=561)
X_tmp <- laf_open_fwf(paste(fldr,"/train/X_train.txt",sep=""), column_widths = cl,
                      column_types=rep("numeric",length(cl))) 
## Temporary column name until features are added
names(X_tmp) <- paste("Msmt", 1:ncol(X_tmp), sep="")                     
X_tr <- X_tmp[,]
X_train <- tbl_df(X_tr)

## paste column names (from feature.txt) onto the X files
featur <- read.table(paste(fldr,"/features.txt",sep=""),header=FALSE,sep=" ")
tr <- paste(featur$V2[1:nrow(featur)], sep=",")   
tr <- make.unique(tr) ## There were duplicate columns so just made them unique
names(X_test) <- paste(tr[1:nrow(featur)], sep="") 
names(X_train) <- paste(tr[1:nrow(featur)], sep="") 

## Get rid of extra columns - keep only mean and std
x_test <- select(X_test[1:nrow(featur)],contains("Mean"),contains("Std"))
x_train <- select(X_train[1:nrow(featur)],contains("Mean"),contains("Std"))
#### If now want to exclude extra mean to reduce to 66 columns, use these two statements below that are currently commented out.
#### x_test <- select(x_test[1:ncol(x_test)],-contains("Freq"),-contains("angle"))
#### x_train <- select(x_train[1:ncol(x_train)],-contains("Freq"),-contains("angle"))

## Create the Activity Description from the Activity Number and merge the individual files together.
Y_test <- Y_test %>% mutate(Activity_Descr=ifelse(Activity_Num==1,"WALKING",ifelse(Activity_Num==2,
"WALKING_UPSTAIRS",ifelse(Activity_Num==3,"WALKING_DOWNSTAIRS",ifelse(Activity_Num==4,
"SITTING",ifelse(Activity_Num==5,"STANDING","LAYING"))))))
test <- cbind(sub_test,Y_test,x_test)

Y_train <- Y_train %>% mutate(Activity_Descr=ifelse(Activity_Num==1,"WALKING",ifelse(Activity_Num==2,
"WALKING_UPSTAIRS",ifelse(Activity_Num==3,"WALKING_DOWNSTAIRS",ifelse(Activity_Num==4,
"SITTING",ifelse(Activity_Num==5,"STANDING","LAYING"))))))
train <- cbind(sub_train,Y_train,x_train) 
                                                                                                                                                                                                                              
## Ready to combine TEST and TRAIN
smart_human_activity_tmp <- rbind(test, train)
## The line below drops the column Sample_Type. This distinction between Test and Train is kept in the intermediate data set only.
smart_human_activity <- smart_human_activity_tmp[,!(names(smart_human_activity_tmp) %in% "Sample_Type")]

##Find average by groups
Tidy_data <- smart_human_activity %>% group_by(Activity_Descr,Subject) %>% summarise_each(funs(mean))
## Alter column names to reflect average measurement but not for columns 1 to 3.
colnames(Tidy_data) [4:ncol(Tidy_data)]<- paste("Avg", colnames(Tidy_data) [4:ncol(Tidy_data)], sep = "_")

write.table(Tidy_data,"HAR_Avg_Tidy_DataSet.txt",row.names=FALSE)

