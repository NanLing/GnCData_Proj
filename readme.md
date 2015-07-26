## The project scope:

The experiments have been carried out with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. For each activities, 561 different measurements are taken. This project is to extract the average measurements on the mean and standard deviation for each measurement for each activity and each volunteer, then save the tidy data set to a text file ('NewTable.txt').

Detail of the 561 measurements can be found in 'features.txt' in the following zip file
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


## The project includes the following files:

* 'README.md' : Summarize the files in the project directory and how the R script works 

* 'Cookbook.md': Shows information about the variables used in the output file ('NewTable.txt')

* 'run_analysis.R': R script to obtain and clean the data


## To run the project script:

* To get the tidy data set, download 'run_analysis.R' to local PC.

* Type source("c:/xxx/run_analysis.R") in RStudio where "xxx" is the directory you saved 'run_analysis.R'

* The output 'NewTable.txt' will be stored in the Rstudio working directory.
