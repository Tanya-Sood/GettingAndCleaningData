library(dplyr)

# Step 1: Load and merge the datasets
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

features <- read.table("UCI HAR Dataset/features.txt", col.names = c("Index", "Feature"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("Code", "Activity"))

x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

full_data <- cbind(subject_data, y_data, x_data)
colnames(full_data) <- c("Subject", "Activity", features$Feature)

# Step 2: Extract mean and standard deviation measurements
selected_features <- grep("mean\\(\\)|std\\(\\)", features$Feature)
data_mean_std <- full_data[, c(1, 2, selected_features + 2)]

# Step 3: Use descriptive activity names
data_mean_std$Activity <- activities[data_mean_std$Activity, "Activity"]

# Step 4: Appropriately label the dataset
names(data_mean_std) <- gsub("^t", "Time", names(data_mean_std))
names(data_mean_std) <- gsub("^f", "Frequency", names(data_mean_std))
names(data_mean_std) <- gsub("Acc", "Accelerometer", names(data_mean_std))
names(data_mean_std) <- gsub("Gyro", "Gyroscope", names(data_mean_std))
names(data_mean_std) <- gsub("Mag", "Magnitude", names(data_mean_std))
names(data_mean_std) <- gsub("BodyBody", "Body", names(data_mean_std))

# Step 5: Create a tidy dataset
tidy_data <- data_mean_std %>%
  group_by(Subject, Activity) %>%
  summarise_all(mean)

write.table(tidy_data, "tidy_dataset.txt", row.names = FALSE)

