# GettingAndCleaningData
This repository contains all files and scripts required to complete the course project.

The script `run_analysis.R` is described below.

## Loading step
The script loads the dplyr library, which is required

## Reading Files
Test and train datasets are read from the corresponding files, as well as the activity names and subject labels

## Cleaning activity names
Next, we relabel activities with their names, rather than their number (See the file `CodeBook.md` for details.) After this, activity names are transformed into factors.

## Subsetting and mergin
We extract only the measurements on the mean and standard deviation for each measurement, and merge the test and train datasets into one set, called `xdata`.

## Mean values dataset
We create a second, independent tidy data set with the average of each variable for each activity and each subject.

## Cleaning variable names
Finally, we transform variable names into meaningful names (See the file `CodeBook.md` for details.)

## Output
The output is the tidy dataset `xmean`, which is exported as text to the file `xmean.txt`.


