#Week 4: dplyr package

#Task: Write the function to get a dataset from Base R: Titanic
#and give the dataframe a new name of your choice
#(hint: you will want your data to be a dataframe. Use the function: as.data.frame(Titanic))
data(Titanic)
hw4 <- as.data.frame(Titanic)
hw4

#See the top rows of the data
#TASK: Write the function to see the top rows of the data
library(dplyr)
hw4 %>% slice_head(n = 3)


#Install and call the package dplyr
#TASK: Write the functions to install and call dplyr
install.packages("dplyr")
library(dplyr)


#Let's just see the Survived and Sex columns
#Task: Write the function to 'select' the Survived and Sex columns 
#(hint: use the 'select' function)
hw4 %>% select(Survived, Sex)


#Let's name the dataset with just the two columns, Survived and Sex
#TASK: Write the function to save the two columns as one new dataset
#and give it a name
hw4_1 <- as.data.frame(hw4 %>% select(Survived, Sex))
hw4_1


#Let's get rid of the Sex column in the new dataset created above
#TASK: Write the function that deselects the sex column
#(hint: use the 'select' function to not select a -column)
hw4_1 %>% select(Survived)


#Let's rename a column name
#TASK: Write the function that renames 'Sex' to 'Gender'
hw4 %>% rename(Gender = Sex)


#Let's make a new dataframe with the new column name
#TASK: Write the function that names a new dataset that includes the 'gender' column
hw4_2 <- as.data.frame(hw4 %>% rename(Gender = Sex))
hw4_2


#Let's 'filter' just the males from our dataset
#TASK: Write the function that includes only rows that are 'male'
hw4 %>% filter(Sex == "Male")


#Let's 'arrange' our data by gender (not the data you just filtered)
#TASK: Write the function to group the data by gender (hint: arrange())
hw4 %>% arrange(Sex)


#Let's see how many people were examined in the dataset (total the frequency in the original dataframe)
#TASK: Sum the Freq column
#TASK: After you run it, write the total here:_2201___
sum(hw4$Freq)


#Since we have a males dataset, let's make a females dataset
#TASK: Write the function that includes only rows that are 'female'
hw4 %>% filter(Sex == "Female")


#And now let's join the males and females
#TASK: Write the function that joins the male and female rows 
#(hint: try using 'union' or 'bind_rows')
hw4_women <- hw4 %>% filter(Sex == "Female")
hw4_men <- hw4 %>% filter(Sex == "Male")
union(hw4_women,hw4_men)


#Optional Task: add any of the other functions 
#you learned about from the dplyr package

## the functions below randomly select 10 rows from the dataset
hw4 %>% slice_sample(n = 10)



