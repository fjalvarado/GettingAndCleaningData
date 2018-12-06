## Clear Workspace
remove(list=ls())

## Set working directory
#
#setwd("./UCI HAR Dataset/")
library(dplyr)
## Read files
xtest<-read.table("./test/X_test.txt")
ytest<-read.table("./test/y_test.txt")
xtrain<-read.table("./train/X_train.txt")
ytrain<-read.table("./train/y_train.txt")
feat<-read.table("./features.txt")
subtest<-read.table("./test/subject_test.txt")
subtrain<-read.table("./train/subject_train.txt")
labels<-read.table("./activity_labels.txt")

## Rename columns (we will later extract only some of the variables)
colnames(xtest)<-feat$V2
colnames(xtrain)<-feat$V2
colnames(ytest)<-"activity"
colnames(ytrain)<-"activity"
colnames(subtest)<-"subject"
colnames(subtrain)<-"subject"

## Substitute activity values for activity names
testfactors<-factor(ytest$activity)
levels(testfactors)<-labels$V2
ytest$activity<-testfactors
trainfactors<-factor(ytrain$activity)
levels(trainfactors)<-labels$V2
ytrain$activity<-trainfactors

## The following columns have "mean" or "std" in their names
meanstd<-sort(c(grep("mean",feat$V2),grep("std",feat$V2)))

## Subset xtest and xtrain with meanstd
xtest<-xtest[,meanstd]
xtrain<-xtrain[,meanstd]

## Merge values data set with subject-activity data sets
ytest<-data.frame(subtest,ytest)
ytrain<-data.frame(subtrain,ytrain)
xtrain<-data.frame(ytrain,xtrain)
xtest<-data.frame(ytest,xtest)

## Merge test and train data sets into a single data set
xdata<-rbind(xtest,xtrain)

## Create data frame with mean values
xmean<-data.frame()
for (subject in 1:30)
    for (activity in labels$V2){
        subactivity<-data.frame(subject,activity)
        xsubset<-xdata[xdata$subject==subject & xdata$activity==activity,]
        xsubset<-data.frame(subactivity,lapply(xsubset[,-(1:2)],mean))
        xmean<-rbind(xmean,xsubset)
    }

## Cleaning variable names
cnames<-colnames(xmean)
cnames<-gsub("tBody","timebody",cnames)
cnames<-gsub("fBody","frequencybody",cnames)
cnames<-gsub("fGravity","frequencygravity",cnames)
cnames<-gsub("tGravity","timegravity",cnames)
cnames<-gsub("Body","",cnames)
cnames<-gsub("Acc","acceleration",cnames)
cnames<-gsub("Jerk","jerk",cnames)
cnames<-gsub("Gyro","gyroscope",cnames)
cnames<-gsub("Mag","magnitude",cnames)
cnames<-gsub("Freq","frequency",cnames)
cnames<-gsub("\\.","",cnames)
colnames(xmean)<-cnames
