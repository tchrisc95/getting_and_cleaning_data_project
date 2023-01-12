##-------------------------------------------------------##
## Read in the data sets x_test, x_train, y_test, and 
## y_train and use the features file to set the headers
##-------------------------------------------------------##

# Read in the subject_test and subject_train files and set 
# the header in each to be subjectID
subjectTest<-read.table("./test/subject_test.txt",header=FALSE)
subjectTrain<-read.table("./train/subject_train.txt",header=FALSE)
names(subjectTest)<-"subjectID"
names(subjectTrain)<-"subjectID"

# Read in the features file which lists the features names used
features<-read.table("./features.txt",header=FALSE)

# Read in the x_test and x_train files and set the headers to
# match the features
x_test<-read.table("./test/X_test.txt",header=FALSE)
x_train<-read.table("./train/X_train.txt",header=FALSE)
names(x_test)<-features$V2
names(x_train)<-features$V2

# Read in the y_test and y_train files and set the header to 
# be activityID
y_test<-read.table("./test/y_test.txt",header=FALSE)
y_train<-read.table("./train/y_train.txt",header=FALSE)
names(y_test)<-"activityID"
names(y_train)<-"activityID"

##-------------------------------------------------------##
## Merge the test data tables into one test table, then
## merge the train data tables into one train table. 
## Finally, merge the test data table and the train data 
## table to have a single data table.
##-------------------------------------------------------##

# Merge the test tables
test_data<-cbind(subjectTest,y_test,x_test)

# Merge the train tables
train_data<-cbind(subjectTrain,y_train,x_train)

# Merge the test and train data into one table
fullData<-rbind(test_data,train_data)

##-------------------------------------------------------##
## Extract the columns which pertain to the mean or to 
## the standard deviation
##-------------------------------------------------------##

# Extract the necessary columns:
# -Subject and activity ID columns
# -All columns that contain "mean()"
# -All columns that contain "std()"
idCols<-fullData[,(1:2)]
meanCols<-fullData[,grep("mean()",names(fullData),fixed=TRUE)]
standDevCols<-fullData[,grep("std()",names(fullData),fixed=TRUE)]

# Merge the extracted columns back into a single table
meanStanDevData<-cbind(idCols,meanCols,standDevCols)

##-------------------------------------------------------##
## Get the activity labels and use them to label the
## data set
##-------------------------------------------------------##

activityLabels<-read.table("./activity_labels.txt")
meanStanDevData$activity<-factor(meanStanDevData$activity,labels=activityLabels$V2)

##-------------------------------------------------------##
## Rename the variables to be more descriptive where 
## appropriate 
##-------------------------------------------------------##

names(meanStanDevData)<-gsub("tBody","TimeDomainBody",names(meanStanDevData),fixed=TRUE)
names(meanStanDevData)<-gsub("Acc","Acceleration",names(meanStanDevData),fixed=TRUE)
names(meanStanDevData)<-gsub("tGravity","TimeDomainGravity",names(meanStanDevData),fixed=TRUE)
names(meanStanDevData)<-gsub("Gyro","AngularVelocity",names(meanStanDevData),fixed=TRUE)
names(meanStanDevData)<-gsub("Mag","MagnitudeSignals",names(meanStanDevData),fixed=TRUE)
names(meanStanDevData)<-gsub("fBody","FrequencyDomainBody",names(meanStanDevData),fixed=TRUE)
names(meanStanDevData)<-gsub("BodyBody","Body",names(meanStanDevData),fixed=TRUE)


##-------------------------------------------------------##
## Create a second data set with the averages of each 
## variable for each activity and subject
##-------------------------------------------------------##

# Reshape the data and calculate the means by subject and activity
melted_data <- melt(meanStanDevData, id=c("subjectID","activity"))
tidy_data<-dcast(melted_data,subjectID+activity~variable,mean)

# Save the tidy data to an output file TidyData.txt
write.table(tidy_data, file="TidyData.txt", row.name=FALSE, col.names=TRUE)

