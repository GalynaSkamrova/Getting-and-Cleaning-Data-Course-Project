# Getting-and-Cleaning-Data-Course-Project

## Script step-by-step explanation

run_analysis.R script takes Samsung data (containing experimental data 
from 30 volunteers carried out 6 types of activities wearing a Samsung 
smartphone) as input. More details about initial dataset can be checked 
in "UCI HAR Dataset/README.txt" file in your working directory after 
running this script. 

run_analysis.R script transforms initial dataset into new tidy dataset 
"UCI HAR Dataset/tidydata.txt" which performs average values for each 
activity and each participant.

CodeBook.md describes initial data as well as all variables from the 
final dataset

### run_analysis.R works as follows:

* Checks whether the folder with raw data haven't been download yet
* If folder doesn't exist, zip file is downloaded and unzipped in working dir
* All necessary data is read from the relevant txt files
* Experimental data is merged with subject and activity labels
* Test and train samples are concatenated into one working rawdataset
* Column names from "UCI HAR Dataset/features.txt" are added to working dataset
* Using "dplyr" package only mean and standard deviation measurements from working dataset are extracted
* Numerical activity labels are changed to more descriptive ones from "UCI HAR Dataset/activity_labels.txt" 
* > At this step we are having final dataset for transformation into new tidy dataset
* Final dataset is grouped by activity and subject
* Mean values for each mean and standard deviation measurements for each activity and subject are evaluated
* Obtained tidy dataset is written into "UCI HAR Dataset/tidydata.txt" file in your working directory
