wd <- getwd()
destfile <- paste(wd,"/DataSet.zip",sep ="")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile=destfile)
unzip(destfile)

features <- read.table("./UCI HAR Dataset/features.txt")
std_index <- grep("std()",features[,2],fixed=T)
mean_index <- grep("mean()",features[,2],fixed=T)
var_index <- sort(c(mean_index,std_index))
var_names <- as.vector(features[var_index,2])

y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/x_train.txt")
var_train <- x_train[,var_index]
colnames(var_train) <- var_names
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
colnames(subject_train) <- "Subject ID"
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
activity_train <- as.data.frame(lapply(y_train, function(x) activity_labels[x,2]))
colnames(activity_train) <- "Activity"
train_set <- as.data.frame(c(subject_train,activity_train,var_train))

y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/x_test.txt")
var_test <- x_test[,var_index]
colnames(var_test) <- var_names
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
colnames(subject_test) <- "Subject ID"
activity_test <- as.data.frame(lapply(y_test, function(x) activity_labels[x,2]))
colnames(activity_test) <- "Activity"
test_set <- as.data.frame(c(subject_test,activity_test,var_test))

NewTable <- rbind(train_set,test_set)

NewTable2 <- aggregate(as.matrix(NewTable[,3:length(NewTable)]) ~ Activity+Subject.ID, NewTable, mean)
NewTable2 <- NewTable2[,c("Subject.ID","Activity",names(NewTable2)[3:length(NewTable2)])]
new_vnames <- unlist(lapply(var_names, function(x) paste("mean of ",x,sep=": ")))
names(NewTable2) <- c("Subject ID","Activity",new_vnames)
write.table(NewTable2, file = "NewTable.txt", row.names = F)
