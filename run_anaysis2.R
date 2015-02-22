library(data.table)
setwd("C:/Users/Byron/Documents/R/Coursera/DSSpecialization/Getting Cleaning Data/Assignment")

X_test <- read.table("./DS/test/X_test.txt")
X_train <- read.table("./DS/train/X_train.txt")
X_data <- rbind(X_test,X_train)

act_test <- read.table("./DS/test/y_test.txt")
act_train <- read.table("./DS/train/y_train.txt")
actv <- rbind(act_test,act_train)

features <- read.table("./DS/features.txt")
vms <- features[grep("mean|std",ignore.case=TRUE,features$V2),1]
data <- X_data[c(vms)]

a_labels <- read.table("./DS/activity_labels.txt")

activity <- factor(as.character(actv$V1),levels = a_labels$V1,labels = as.character(a_labels$V2))

data <- cbind(activity,data)

nombres <- as.character(features$V2[c(vms)])
nombres<-c("Activity",nombres)
names(data) <- nombres

l_var=length(vms)
l_act=length(a_labels$V1)

data2 <- matrix(nrow=l_var,ncol=l_act)
for(i in 2:(length(vms)+1)){
   a <- tapply(data[,i],data$Activity,mean,simplify=FALSE)
   a <- as.numeric(a)
   data2[i-1,] <- a 
}

data2 <- t(data2)
data2 <- data.frame(data2)
data2 <- cbind(a_labels$V2,data2)
names(data2) <- nombres








