# Obtaining data
if (file.exists("UCI HAR Dataset") == FALSE) {
	download.file("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "UCI_HAR_Dataset.zip")
	unzip("UCI_HAR_Dataset.zip")
}

#Preparing datasets to work with
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt")

#Preparing dataset containing test and train data
train <- cbind(subjecttrain, ytrain, xtrain)
test <- cbind(subjecttest, ytest, xtest)
rawdataset <- rbind(train, test)

# Adding column names
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactor = FALSE)
colnames(rawdataset) <- c("subject", "activity", features[ ,2])

#Extracting measurements on the mean value and st.dev
library(dplyr)
dataset <- rawdataset[ , grep("subject|activity|std|mean[()]", colnames(rawdataset))]
act_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
mergeddata <- merge(act_labels, dataset, by.x = "V1", by.y = "activity")
processeddata <- select(mergeddata, -V1)
findataset <- rename(processeddata, activity = V2)

#Creating independent tidy dataset
tidydata <- findataset%>%group_by(activity,subject)%>%summarise_each(funs(mean))
write.table(tidydata,file="UCI HAR Dataset/tidydata.txt", col.names = colnames(tidydata))