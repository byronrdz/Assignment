library(dplyr)
#Defining working directory
#setwd("C:/Users/Byron/Documents/R/Coursera/DSSpecialization/Getting Cleaning Data/Assignment")

#Reading data from local files
X_test <- read.table("./DS/test/X_test.txt") 
X_train <- read.table("./DS/train/X_train.txt")
act_test <- read.table("./DS/test/y_test.txt")
act_train <- read.table("./DS/train/y_train.txt")
a_labels <- read.table("./DS/activity_labels.txt")
features <- read.table("./DS/features.txt")
sbj_test <- read.table("./DS/test/subject_test.txt")
sbj_train <- read.table("./DS/train/subject_train.txt")

X_data <- rbind(X_test,X_train) #Merges the test and train data in dataframe X_data.
names(X_data)<-features$V2 #Names for the columns of the dataframe X_data
actv <- rbind(act_test,act_train) #Merges the activities of the test and train data in dataframe actv.
activity <- factor(as.character(actv$V1),levels = a_labels$V1,labels = as.character(a_labels$V2)) #creates factor activity
subject <- rbind(sbj_test,sbj_train) #Merges the subjects data of train and test sets in dataframe subject.
names(subject) <- "subject" #Column name for the subject column
data <- cbind(subject,X_data) #Includes de dataset for subjects in the dataset X_data
data <- cbind(activity,data) #Includes de dataset for activities in the dataset X_data
data <- data[,grep("mean\\(\\)|std\\(\\)|activity|subject",names(data))] #Retreives columns containing mean() and std().

names(data) <- gsub("\\(\\)","",names(data))  #Modifies the names for the columns eliminating "()".
names(data) <- gsub("-",".",names(data)) #Modifies the names for the columns eliminating "-".

data <- tbl_df(data) #Table Data Frame

data_ready <- data%>%group_by(activity,subject)%>%summarise_each(funs(mean)) #Sumarizes data grouping by activity and subject.

write.table(data_ready, file="tidyData.txt",row.name=FALSE) #Writes tidy data in file tidyData.txt



