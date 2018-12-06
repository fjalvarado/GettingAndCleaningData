# Code Book for Course project

## Tidying script `run_analysis.R`

The file **run_analysis.R** processes and cleans the data as follows:

### Loading step
The script loads the dplyr library, which is required

### Reading Files
Test and train datasets are read from the corresponding files, as well as the activity names and subject labels

### Cleaning activity names
Next, we relabel activities with their names, rather than their number (See the file `CodeBook.md` for details.) After this, activity names are transformed into factors.

### Subsetting and mergin
We extract only the measurements on the mean and standard deviation for each measurement, and merge the test and train datasets into one set, called `xdata`.

### Mean values dataset
We create a second, independent tidy data set with the average of each variable for each activity and each subject.

### Cleaning variable names
Finally, we transform variable names into meaningful names (See the file `CodeBook.md` for details.)

### Output
The output is the tidy dataset `xmean`, which is exported as text to the file `xmean.txt`.


## Activity Labels

The numeric activity labels are matched with their names according to the following table

Activity label | Activity name
---------------|--------------
1 | WALKING
2 | WALKING_UPSTAIRS
3 | WALKING_DOWNSTAIRS
4 | SITTING
5 | STANDING
6 | LAYING

## Variable names

All variable names are changed so they are descriptive. Extra periods are removed. The following table shows the result of the conversion, variable names are self-explanatory.


Old Variable Name | Descriptive Variable Name
------------------|--------------------------
"tBodyAcc.mean...X" | "timebodyaccelerationmeanX"
"tBodyAcc.mean...Y" | "timebodyaccelerationmeanY"
"tBodyAcc.mean...Z" | "timebodyaccelerationmeanZ"
"tBodyAcc.std...X" | "timebodyaccelerationstdX"
"tBodyAcc.std...Y" | "timebodyaccelerationstdY"
"tBodyAcc.std...Z" | "timebodyaccelerationstdZ"
"tGravityAcc.mean...X" | "timegravityaccelerationmeanX"
"tGravityAcc.mean...Y" | "timegravityaccelerationmeanY"
"tGravityAcc.mean...Z" | "timegravityaccelerationmeanZ"
"tGravityAcc.std...X" | "timegravityaccelerationstdX"
"tGravityAcc.std...Y" | "timegravityaccelerationstdY"
"tGravityAcc.std...Z" | "timegravityaccelerationstdZ"
"tBodyAccJerk.mean...X" | "timebodyaccelerationjerkmeanX"
"tBodyAccJerk.mean...Y" | "timebodyaccelerationjerkmeanY"
"tBodyAccJerk.mean...Z" | "timebodyaccelerationjerkmeanZ"
"tBodyAccJerk.std...X" | "timebodyaccelerationjerkstdX"
"tBodyAccJerk.std...Y" | "timebodyaccelerationjerkstdY"
"tBodyAccJerk.std...Z" | "timebodyaccelerationjerkstdZ"
"tBodyGyro.mean...X" | "timebodygyroscopemeanX"
"tBodyGyro.mean...Y" | "timebodygyroscopemeanY"
"tBodyGyro.mean...Z" | "timebodygyroscopemeanZ"
"tBodyGyro.std...X" | "timebodygyroscopestdX"
"tBodyGyro.std...Y" | "timebodygyroscopestdY"
"tBodyGyro.std...Z" | "timebodygyroscopestdZ"
"tBodyGyroJerk.mean...X" | "timebodygyroscopejerkmeanX"
"tBodyGyroJerk.mean...Y" | "timebodygyroscopejerkmeanY"
"tBodyGyroJerk.mean...Z" | "timebodygyroscopejerkmeanZ"
"tBodyGyroJerk.std...X" | "timebodygyroscopejerkstdX"
"tBodyGyroJerk.std...Y" | "timebodygyroscopejerkstdY"
"tBodyGyroJerk.std...Z" | "timebodygyroscopejerkstdZ"
"tBodyAccMag.mean.." | "timebodyaccelerationmagnitudemean"
"tBodyAccMag.std.." | "timebodyaccelerationmagnitudestd"
"tGravityAccMag.mean.." | "timegravityaccelerationmagnitudemean"
"tGravityAccMag.std.." | "timegravityaccelerationmagnitudestd"
"tBodyAccJerkMag.mean.." | "timebodyaccelerationjerkmagnitudemean"
"tBodyAccJerkMag.std.." | "timebodyaccelerationjerkmagnitudestd"
"tBodyGyroMag.mean.." | "timebodygyroscopemagnitudemean"
"tBodyGyroMag.std.." | "timebodygyroscopemagnitudestd"
"tBodyGyroJerkMag.mean.." | "timebodygyroscopejerkmagnitudemean"
"tBodyGyroJerkMag.std.." | "timebodygyroscopejerkmagnitudestd"
"fBodyAcc.mean...X" | "frequencybodyaccelerationmeanX"
"fBodyAcc.mean...Y" | "frequencybodyaccelerationmeanY"
"fBodyAcc.mean...Z" | "frequencybodyaccelerationmeanZ"
"fBodyAcc.std...X" | "frequencybodyaccelerationstdX"
"fBodyAcc.std...Y" | "frequencybodyaccelerationstdY"
"fBodyAcc.std...Z" | "frequencybodyaccelerationstdZ"
"fBodyAcc.meanFreq...X" | "frequencybodyaccelerationmeanfrequencyX"
"fBodyAcc.meanFreq...Y" | "frequencybodyaccelerationmeanfrequencyY"
"fBodyAcc.meanFreq...Z" | "frequencybodyaccelerationmeanfrequencyZ"
"fBodyAccJerk.mean...X" | "frequencybodyaccelerationjerkmeanX"
"fBodyAccJerk.mean...Y" | "frequencybodyaccelerationjerkmeanY"
"fBodyAccJerk.mean...Z" | "frequencybodyaccelerationjerkmeanZ"
"fBodyAccJerk.std...X" | "frequencybodyaccelerationjerkstdX"
"fBodyAccJerk.std...Y" | "frequencybodyaccelerationjerkstdY"
"fBodyAccJerk.std...Z" | "frequencybodyaccelerationjerkstdZ"
"fBodyAccJerk.meanFreq...X" | "frequencybodyaccelerationjerkmeanfrequencyX"
"fBodyAccJerk.meanFreq...Y" | "frequencybodyaccelerationjerkmeanfrequencyY"
"fBodyAccJerk.meanFreq...Z" | "frequencybodyaccelerationjerkmeanfrequencyZ"
"fBodyGyro.mean...X" | "frequencybodygyroscopemeanX"
"fBodyGyro.mean...Y" | "frequencybodygyroscopemeanY"
"fBodyGyro.mean...Z" | "frequencybodygyroscopemeanZ"
"fBodyGyro.std...X" | "frequencybodygyroscopestdX"
"fBodyGyro.std...Y" | "frequencybodygyroscopestdY"
"fBodyGyro.std...Z" | "frequencybodygyroscopestdZ"
"fBodyGyro.meanFreq...X" | "frequencybodygyroscopemeanfrequencyX"
"fBodyGyro.meanFreq...Y" | "frequencybodygyroscopemeanfrequencyY"
"fBodyGyro.meanFreq...Z" | "frequencybodygyroscopemeanfrequencyZ"
"fBodyAccMag.mean.." | "frequencybodyaccelerationmagnitudemean"
"fBodyAccMag.std.." | "frequencybodyaccelerationmagnitudestd"
"fBodyAccMag.meanFreq.." | "frequencybodyaccelerationmagnitudemeanfrequency"
"fBodyBodyAccJerkMag.mean.." | "frequencybodyaccelerationjerkmagnitudemean"
"fBodyBodyAccJerkMag.std.." | "frequencybodyaccelerationjerkmagnitudestd"
"fBodyBodyAccJerkMag.meanFreq.." | "frequencybodyaccelerationjerkmagnitudemeanfrequency"
"fBodyBodyGyroMag.mean.." | "frequencybodygyroscopemagnitudemean"
"fBodyBodyGyroMag.std.." | "frequencybodygyroscopemagnitudestd"
"fBodyBodyGyroMag.meanFreq.." | "frequencybodygyroscopemagnitudemeanfrequency"
"fBodyBodyGyroJerkMag.mean.." | "frequencybodygyroscopejerkmagnitudemean"
"fBodyBodyGyroJerkMag.std.." | "frequencybodygyroscopejerkmagnitudestd"
"fBodyBodyGyroJerkMag.meanFreq.." | "frequencybodygyroscopejerkmagnitudemeanfrequency"


