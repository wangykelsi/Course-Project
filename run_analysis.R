##Load raw data
traindata <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
testdata <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE, col.name=c("No", "Name"))
trainlabel <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE, col.name="No")
testlabel <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE, col.name="No")
trainsubject <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE, col.name="subject")
testsubject <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE, col.name="subject")
labelset <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE, col.name=c("No", "Name"))

##Merge train set and test set

wholeset <- rbind(traindata, testdata)

##Label the data set with descriptive variable names
names(features) <- c("No", "Name")
features$Name <- as.character(features$Name)
features$Name <- gsub("-","",features$Name)
names(wholeset) <- as.vector(features$Name)

##Extract only mean and std
tidyset1 <- data.frame()
tidyset1 <- wholeset[, grep("mean[(][)]", names(wholeset))]
tidyset1 <- cbind(tidyset1, wholeset[, grep("std[(][)]", names(wholeset))])
names(tidyset1) <- gsub("[(][)]","",names(tidyset1))

##Uses descriptive activity names to name the activities in the data set
activity <- rbind(trainlabel[1], testlabel[1])
activity <- labelset$Name[match(activity$No,labelset$No)]
tidyset1 <- cbind(activity, tidyset1)

##Add Subject to tidyset
subject <- rbind(trainsubject[1], testsubject[1])
tidyset1 <- cbind(subject, tidyset1)

#Creates a second, independent tidy data set with the average of each variable for each activity and each subject
library(reshape2)
melten <- melt(tidyset1, id.vars = c("subject","activity"), na.rm=TRUE)
tidyset2 <- data.frame()
tidyset2 <- dcast(melten, subject + activity ~ variable, mean)
write.table(tidyset2, "tidyset.txt")
