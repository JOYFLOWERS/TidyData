#####Human Recognition Activity Using Smartphones Data Set
####<b> CODEBOOK </b>


<b> SUMMARY </b>
The data set is structured so that there are 180 entries of summary data where each measurement variable represents the average of either the <i> mean or standard deviation variables</i>, calculated from test and training data. The original measurements were obtained from accelerometer and gyroscope sensor signals from a Samsung Galaxy S II smartphone placed around the waist of participants (subjects) to measure their movements while performing six different activities. The data set is grouped first by Activity Description and then by Subject. For more information on the original data collection visit the [UCI Human Recognition Activity website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). Source files used were subject_test, subject_train, X_test, X_train, y_test, y_train and features.

A note about naming conventions: The naming conventions used for this dataset follow those of state-of-the-art best-in-class enterprise systems that have stood the test of time such as SAP or Oracle/Peoplesoft, which use underscores "_" and capital letters for clarity, and also to make the variables descriptive but not too long. If they are too long, they can be too cumbersome to use. Also, because it is easy for the customer/user of the dataset to understand that there are just two basic types of measurements which are time and frequency, these were not spelled out, but simply stated within the code book.
<b> VARIABLE...DESCRIPTION...VALUES </b>


1. <i> Activity_Descr </i>... Description of Activities         
               WALKING
		       WALKING_UPSTAIRS
               WALKING_DOWNSTAIRS
               SITTING
               STANDING
               LAYING
2.  <i> Subject </i>...Participants IDs		
               1 to 30
3.  <i> Activity_Num </i> ...Activity ID			
               1 to 6
			   Corresponds to 
               Activity Description
The original measurements described below were obtained using acceleration and gyroscope sensors on a Samsung Galaxy S II and then the mean and standard deviation of those measurements were taken. Measurements of 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were taken, with noise filtered out. The acceleration signal is separated into body and gravity acceleration signals. The X, Y, and Z measurements were recorded. The magnitude of the three-dimensional signals were calculated. <b> In the variables below, the prefix of t indicates time domain signals, and f indicates frequency domain signals.</b> These remaining variables below contain the average of the <i> mean and standard deviation variables</i>, and are therefore summary data.  The detailed data can be found at: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]
4. <i> Avg_tBodyAcc-mean()-X
5.  Avg_tBodyAcc-mean()-Y                   
6.  Avg_tBodyAcc-mean()-Z                   
7.  Avg_tGravityAcc-mean()-X                
8.  Avg_tGravityAcc-mean()-Y                
9.  Avg_tGravityAcc-mean()-Z                
10. Avg_tBodyAccJerk-mean()-X
11. Avg_tBodyAccJerk-mean()-Y            
12. Avg_tBodyAccJerk-mean()-Z               
13. Avg_tBodyGyro-mean()-X                  
14. Avg_tBodyGyro-mean()-Y                  
15. Avg_tBodyGyro-mean()-Z                  
16. Avg_tBodyGyroJerk-mean()-X              
17. Avg_tBodyGyroJerk-mean()-Y              
18. Avg_tBodyGyroJerk-mean()-Z              
19. Avg_tBodyAccMag-mean()                  
20. Avg_tGravityAccMag-mean()               
21. Avg_tBodyAccJerkMag-mean()              
22. Avg_tBodyGyroMag-mean()                 
23. Avg_tBodyGyroJerkMag-mean()             
24. Avg_fBodyAcc-mean()-X                   
25. Avg_fBodyAcc-mean()-Y                   
26. Avg_fBodyAcc-mean()-Z                   
27. Avg_fBodyAcc-meanFreq()-X               
28. Avg_fBodyAcc-meanFreq()-Y               
29. Avg_fBodyAcc-meanFreq()-Z               
30. Avg_fBodyAccJerk-mean()-X               
31. Avg_fBodyAccJerk-mean()-Y               
32. Avg_fBodyAccJerk-mean()-Z               
33. Avg_fBodyAccJerk-meanFreq()-X           
34. Avg_fBodyAccJerk-meanFreq()-Y           
35. Avg_fBodyAccJerk-meanFreq()-Z           
36. Avg_fBodyGyro-mean()-X                  
37. Avg_fBodyGyro-mean()-Y                  
38. Avg_fBodyGyro-mean()-Z                  
39. Avg_fBodyGyro-meanFreq()-X              
40. Avg_fBodyGyro-meanFreq()-Y...
41. Avg_fBodyGyro-meanFreq()-Z              
42. Avg_fBodyAccMag-mean()                  
43. Avg_fBodyAccMag-meanFreq()              
44. Avg_fBodyBodyAccJerkMag-mean()          
45. Avg_fBodyBodyAccJerkMag-meanFreq()      
46. Avg_fBodyBodyGyroMag-mean()             
47. Avg_fBodyBodyGyroMag-meanFreq
48. Avg_fBodyBodyGyroJerkMag-mean()         
49. Avg_fBodyBodyGyroJerkMag-meanFreq()
50. Avg_angle(tBodyAccMean,gravity)         
51. Avg_angle(tBodyAccJerkMean),gravityMean): 
52. Avg_angle(tBodyGyroMean,gravityMean)    
53. Avg_angle(tBodyGyroJerkMean,gravityMean): 
54. Avg_angle(X,gravityMean)                
55. Avg_angle(Y,gravityMean)                
56. Avg_angle(Z,gravityMean)                
57. Avg_tBodyAcc-std()-X                    
58. Avg_tBodyAcc-std()-Y                    
59. Avg_tBodyAcc-std()-Z                    
60. Avg_tGravityAcc-std()-X                 
61. Avg_tGravityAcc-std()-Y                 
62. Avg_tGravityAcc-std()-Z                 
63. Avg_tBodyAccJerk-std()-X                
64. Avg_tBodyAccJerk-std()-Y                
65. Avg_tBodyAccJerk-std()-Z                
66. Avg_tBodyGyro-std()-X                   
67. Avg_tBodyGyro-std()-Y                   
68. Avg_tBodyGyro-std()-Z                   
69. Avg_tBodyGyroJerk-std()-X               
70. Avg_tBodyGyroJerk-std()-Y               
71. Avg_tBodyGyroJerk-std()-Z               
72. Avg_tBodyAccMag-std()                   
73. Avg_tGravityAccMag-std()                
74. Avg_tBodyAccJerkMag-std()               
75. Avg_tBodyGyroMag-std()                  
76. Avg_tBodyGyroJerkMag-std()              
77. Avg_fBodyAcc-std()-X                   
78. Avg_fBodyAcc-std()-Y                    
79. Avg_fBodyAcc-std()-Z                    
80. Avg_fBodyAccJerk-std()-X                
81. Avg_fBodyAccJerk-std()-Y                
82. Avg_fBodyAccJerk-std()-Z                
83. Avg_fBodyGyro-std()-X                   
84. Avg_fBodyGyro-std()-Y                   
85. Avg_fBodyGyro-std()-Z                   
86. Avg_fBodyAccMag-std
87. Avg_fBodyBodyAccJerkMag-std()          
88. Avg_fBodyBodyGyroMag-std()              
89. Avg_fBodyBodyGyroJerkMag-std()     </i>

<b> FINAL NOTES </b> 
The Sample_Type variable indicating whether the data came from <i>test</i> or <i>train</i> is in the intermediate data set, but was removed from the final tidy data set seen here, so as not to create confusion when grouping data. Also, the <i> mean angle </i>measurements and <i>mean Freq </i>were included in the final tidy data set with the thought that users of this data may want it. It is much easier to remove extra data than to add it in later. The <i>Activity_Num </i>was left in the final tidy data set for convenience to the user. Consequently, a user of the data set does not need to spell out the activities when filtering, but can use their numerical representation instead. Yet the <i>Activity Description </i>is handy for reporting purposes. Because this is a small data set, extra storage is not an issue.

