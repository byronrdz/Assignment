##Getting and Cleaning Data Project Assignment

###Script to obtain a Tidy Data Set


The first part in the code is the reading of the data from the local files downloaded from the specified web site. The root directory for the files is "DS" which contains the train and test directories with their respective files.

The function used to read the data is **read.table()**, which creates the corresponding datasets to work with.

The next part is creating a general dataset merging all the data obtained of the reading of the files in the preceding part. 

To merge datasets from test and training parts the function used is **rbind()** which merges the rows of the datasets specified in the arguments of the function.

To include the information of subject and activity, which have their own datasets, the function used is **cbind()**, which merges the columns of the arguments.

The next part is to retrieve only the columns containing mean and standard deviation from the dataset. Analizing the information of the dataset, the columns containing the desired information contains the patterns "mean()" and "std()". So, these patters are detected with the function **grep()**, and the are used to filter those columns which are needed.

Later, the function **gsub()** is used to change the names of the dataframe in a more convenient format.

After these steps, the information is ready to be summarized. To summarize the information there are two key functions included in the library **deplyr**, the **group_by()** which, in this case, groups the data by activity and by subject, and the function **summarise_each()** which summarizes with the **mean()** according to the grouping defined in the precedent step.

Finally, the dataset is loaded in a file called "tidyData.txt" through the function **write.table()**.



Byron Rodríguez

February 22, 2015