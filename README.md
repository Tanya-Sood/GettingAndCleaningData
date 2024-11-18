# Getting and Cleaning Data - Course Project

## Overview
This project demonstrates data cleaning by processing data from the accelerometers on the Samsung Galaxy S smartphone. The result is a tidy dataset with averages of measurements grouped by subject and activity.

## Files
- `run_analysis.R`: R script for data cleaning and tidying.
- `tidy_dataset.txt`: Final tidy dataset.
- `CodeBook.md`: Documentation of variables and transformations.

## Steps
1. Merge training and test datasets.
2. Extract measurements of mean and standard deviation.
3. Assign descriptive activity names.
4. Label variables with descriptive names.
5. Create a tidy dataset with averages for each activity and subject.

## How to Run
1. Download the dataset from [this link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
2. Extract the files and place them in the working directory.
3. Run `run_analysis.R`.
4. The tidy dataset will be saved as `tidy_dataset.txt`.
