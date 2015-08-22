## Tidy Data Course Project 


###Before you run the run.analysis.R script:
<b>The goal was to make this easy to run without having to do a lot of groundwork first, or at all.</b> The script should be self-sufficient so all that is needed is to run the run.analysis.R script and it will fully take care of creating the tidy data set.
<br> 1)	The run.analysis.R script will download the data into the current working directory, and unzip it. The current working directory will then contain the features.txt file, the test folder and the train folder which contain the rest of the data. The script will maneuver through those folders to access the needed files. If for some reason the download process does not work for a specific computer, download and unzip the files and start the program from the point the files are already downloaded - should be at line <i>fldr <- "UCI HAR Dataset"</i>, after the packages are loaded.
<br> 2)	The script does not assume that packages are loaded and therefore will load the following packages as the first step of the script: The LaF package greatly reduces the reading of the large fixed width tables. The dplyr and plyr are loaded so that tbl_df can run - which suppresses large amounts of printing so you only see a manageable amount of information on the screen.
<br> install.packages("LaF")
<br> install.packages("dplyr")
<br> install.packages("plyr")
<br> library("LaF")
<br> library("dplyr")
<br> library("plyr") 
<br> 3) If this script is run on a PC instead of a MAC, remove the method=curl option in the download.file command. The PC version of the download.file is in the script, but commented out.

### General Information
The final data set is structured so that there are 180 entries of summary data where each measurement variable represents the average of either the <i> mean or standard deviation variables</i>, calculated from test and training data. The original measurements were obtained from accelerometer and gyroscope sensor signals from a Samsung Galaxy S II smartphone placed around the waist of participants (subjects) to measure their movements while performing six different activities. The data set is grouped first by Activity Description and then by Subject. For more information on the original data collection visit the [UCI Human Recognition Activity website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). Source files used were subject, X_test, X_train, y_test, y_train and features. Also see the Tidy Data CodeBook more details on this data set. 

### Analysis and steps to completion
<br>1)	Analyzed the data in the data files using the information provided through the [UCI Human Recognition Activity website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and downloaded the data from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]. Also watched the video.
<br>2)	Concluded that the test data sample consists of 2947 observations and train data sample consists of  7352 observations. The combined intermediate file has 10299 observations.
<br>3)	Got column names from features.txt file and combined them with both the test and train files. Note: There were duplicate column names, so made them unique otherwise they caused problem later when trying to pull certain columns.
<br>4)	Excluded all columns that were not mean or standard deviation. Chose to include ALL columns with mean or standard deviation. Designing systems, data warehouses or just files for reporting, for years has taught that it is much better to include more than less when creating the data set if it is not 100% clear how customers/users will use the data. It is much more difficult to add data later on. If the extra data were not ever to be used, the code would exclude the columns regarding mean frequency and angle mean, leaving only 66 columns with the following two lines of code (these are in the script but commented out): 
<br><i> x_test <- select(x_test[1:ncol(x_test)],-contains("Freq"),-contains("angle"))
<br>x_train <- select(x_train[1:ncol(x_train)],-contains("Freq"),-contains("angle")) </i>
<br>5)	Added a new column to the Subject files to identify which was “test” data and which was “train” data as preparation for the merge. This is just so this segregation is preserved after the merge so the customer/user can easily separate it or filter it for their purposes. (Note this was not kept in the final Tidy data set)
<br>6)	Added column names Subject and Activity_Num. Created a new column with Activity Description (Activity_Descr). Combined the columns of Subject, Y_test (Activity_Num and Activity_Descr) with the main X_test mean and standard deviation data, for both the Test and Train data.
<br>7)	Combine the two data sets (Test and Train) together.
<br>8)	Took the average of each column by Activity Description (Activity_Descr) and by Subject.
<br>9)	Renamed the columns.
<br>10) Wrote out the final tidy data set.

### Final word about tidiness
The data set is tidy as it conforms to the rules of a tidy data set: 1) each variable measured is in one column 2) Each observation is in a different row 3) Variable names are at the top of the file (columns) 4) Using the explanations in the code book, along with the descriptive names, the variable names are explained.

