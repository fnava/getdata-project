#activity_labels_file <- "UCI\ HAR\ Dataset/activity_labels.txt"
#X_test_file <- "UCI\ HAR\ Dataset/test/X_test.txt"
#X_test_file_lines <- 2947
#y_test_file <- "UCI\ HAR\ Dataset/test/y_test.txt"
#subject_test_file <- "UCI\ HAR\ Dataset/test/subject_test.txt"
#X_train_file <- "UCI\ HAR\ Dataset/test/X_train.txt"
#X_train_file_lines <- 7352
#y_train_file <- "UCI\ HAR\ Dataset/test/y_train.txt"
#subject_train_file <- "UCI\ HAR\ Dataset/test/subject_train.txt"

basedir <- "UCI\ HAR\ Dataset"
features_file <- paste(basedir, "/features.txt", sep="")
X_files <- c(
    paste(basedir,"/test/X_test.txt",sep=""),
    paste(basedir,"/train/X_train.txt",sep="")
    )
X_files_lines <- c(2947, 7352)
y_files <- c(
    paste(basedir,"/test/y_test.txt",sep=""),
    paste(basedir,"/train/y_train.txt",sep="")
    )
subject_files <- c(
    paste(basedir,"/test/subject_test.txt",sep=""),
    paste(basedir,"/train/subject_train.txt",sep="")
  )

# Descriptive naming for activities:
activities <- c("Walking","Walking Upstairs","Walking Downstairs","Sitting","Standing","Laying")

# Features names filtered:
features <- read.table(features_file)
features_filtered <- grep("mean|std", features[,2])
fields <- rep(16, 561)

# Files are too large to read in memory so they are read
# joined and appended to temp file in chunks of row_count lines
row_count = 100

# Two tidy datasets will be generated.
# First one test and training data joined and variables filtered:
tidy_dataset_1_file = "./X_tmp.csv"
# Second one will be uploaded as result, containint averaged values:
tidy_dataset_2_file = "./X_final.txt"
# must be a .txt file to be able to upload as attachment in project form page

#gen_tidy <- function() {
  if (! file.exists(tidy_dataset_1_file)) {
    for(file_type in 1:2 ){
      for( skip_idx in seq(0,X_files_lines[file_type], by=row_count)) {
        print(paste(X_files[file_type], skip_idx))
        
        # Read files to be filtered and joined:
        X_df <- read.fwf(X_files[file_type], 
                           fields,
                           n=row_count, 
                           skip=skip_idx, 
                           buffersize=10, 
                           colClasses=rep("numeric", 561)
                           )
        y_df <- read.table(y_files[file_type], nrows=row_count, skip=skip_idx)
        y_df_filtered <- sapply(y_df, function(x) {activities[x]})
        subject_df <- read.table(subject_files[file_type], nrows=row_count, skip=skip_idx)
        X_df_filtered <- X_df[features_filtered]
    
        # Join data frames and descriptive names into X data frame:
        X <- cbind(subject_df, y_df_filtered, X_df_filtered)
        names(X) <- c("subject","activity", as.vector(features[features_filtered,2]) )
        
        # Append filtered data frame to first tidy dataset:
        write.table(X, 
                  file=tidy_dataset_1_file,
                  append=TRUE,
                  col.names=(skip_idx == 0 && file_type == 1),
                  sep=",",
                  qmethod="double",
                  row.names=FALSE)
      }
    }
  }
  
  # Read first temporary tidy set to generate the second tidy set with
  # averaged variables:
  
  t1 <- read.csv(tidy_dataset_1_file, check.names=F)
  by_activity <- as.factor(t1$activity)
  by_subject <- as.factor(t1$subject)
  a1 <- aggregate(t1, list(Activity=by_activity, Subject=by_subject), mean, na.rm=TRUE, simplify=TRUE)
#  write.table(a1,
#    file=tidy_dataset_2_file,
#    col.names=TRUE,
#    sep=",",
#    qmethod="double",
#    row.names=FALSE)
  a1$activity <- as.character(a1$Activity)
  a2 <- a1[,3:83]
  write.csv(a2, tidy_dataset_2_file, row.names=FALSE) 

#}
#gen_tidy()
