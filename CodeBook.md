# CodeBook

## Overview
This document describes the variables, data, and transformations used in the project.

## Variables
- **Subject**: Identifier for each subject (1-30).
- **Activity**: Descriptive name of the activity performed.
- **TimeBodyAccelerometerMeanX/Y/Z**: Mean of body acceleration signals in the X, Y, Z directions (time domain).
- **TimeBodyAccelerometerStdX/Y/Z**: Standard deviation of body acceleration signals (time domain).
- **FrequencyBodyGyroscopeMeanX/Y/Z**: Mean of gyroscope signals in the X, Y, Z directions (frequency domain).
- (Similar labels for all measurements of mean and standard deviation.)

## Data Transformations
1. Merged training and test datasets.
2. Extracted columns for mean and standard deviation using regular expressions.
3. Replaced activity codes with descriptive names.
4. Renamed variables for better readability.
5. Created a tidy dataset with the average of each variable grouped by subject and activity.

## Final Dataset
The tidy dataset contains:
- 180 rows (30 subjects × 6 activities).
- 68 columns (1 for subject, 1 for activity, 66 for measurements).
