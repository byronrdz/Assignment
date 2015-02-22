library(dplyr)
setwd("C:/Users/Byron/Documents/R/Coursera/DSSpecialization/Getting Cleaning Data/Assignment")
#Reading data from local files


X_test <- read.table("./DS/test/X_test.txt") 
X_train <- read.table("./DS/train/X_train.txt")
act_test <- read.table("./DS/test/y_test.txt")
act_train <- read.table("./DS/train/y_train.txt")
a_labels <- read.table("./DS/activity_labels.txt")
features <- read.table("./DS/features.txt")
sbj_test <- read.table("./DS/test/subject_test.txt")
sbj_train <- read.table("./DS/train/subject_train.txt")

X_data <- rbind(X_test,X_train)
names(X_data)<-features$V2
actv <- rbind(act_test,act_train)
activity <- factor(as.character(actv$V1),levels = a_labels$V1,labels = as.character(a_labels$V2))
subject <- rbind(sbj_test,sbj_train)
names(subject) <- "subject"
data <- cbind(subject,X_data)
data <- cbind(activity,data)
data <- data[,grep("mean\\(\\)|std\\(\\)|activity|subject",names(data))]

names(data) <- gsub("\\(\\)","",names(data))
names(data) <- gsub("-",".",names(data))

data <- tbl_df(data)

data_ready <- data%>%group_by(activity,subject)%>%summarise_each(funs(mean))

write.table(data_ready, file="data.txt",row.name=FALSE)



