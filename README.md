Course-Project
==============
This is a repo of Course Project for Getting and Cleaning Data. This file will illustrate what this repo contains and how to run the cleaning operation on the given dataset.
## File Description
* **getdata-projectfiles-UCI HAR Dataset.zip** - The zipped file you need to run the cleaning scripts on.
* **run_analysis.R** - The R script based on the zipped data described above to produce a tidy dataset.
* **tidyset.txt** - The output file of run_analysis.R
* **README.md** - The Markdown file of this repo.
* **CODEBOOK.md** - The description of the tidy data set.

## Run Instructions
You can folk and clone this repo to your computer, and make sure the zipped data and the R script file are placed in your R working directory.
The script in run_analysis.R includes data operations as follows:    
* Unzip the data file
* Merge the training and the testsets to create one data set
* Use descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names
* create a tidy data set with the average of each variablefor each activity and each subject    

Run the code in run_analysis.R, and a txt file called "tidy set" will be produced in your working directory.
The