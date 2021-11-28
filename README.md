# GovTech Technical Assessment
### Author: [Ho Chin Tee](https://www.linkedin.com/in/hoct/)
### Email: chintee.h@gmail.com
---
## Section 1: Data Pipeline
We will be using Python to process the file. The files are saved in the Data folder and imported using Pandas.


### Description of Functions
#### Process
This function process the csv as follows:
1. Remove the Null in names
2. Convert the price to numberical value so as to remove the precended 0
3. Split the name into first_name and last_name
4. Remove the name column
5. Reorder the columns to first_name, last_name, price

#### Output
This funtion does to following to the 2 files:
1. Union the 2 data tables
2. Save the merged data table as 'final.csv'

### Scheduling
Schedule is done using Windows Task Scheduler.
#### CRON
We will be using this to set the time for refresh "0 1 * * *" to let it refresh as 1am daily

---
## Section 4: Charts and APIs
We will be using the data directly from the site. API call as shown: https://api.covid19api.com/live/country/singapore

Convert to Dataframe and then plot using matplotlib.

We can see that the confirmed cases and death rate is following the same trend. For the recovered numbers, it follows the confirmed number after August 2021 However, the recovered number becomes 0 after August 2021

---
## Section 5: Machine Learning
We will be using the Random Forest Classifier for this problem
### Data Ingestion
We will download the file directly from the url and we specify each column based on the names
### Data Cleaning
Since all the variables given are discrete, we will separate them into ordinal or categorical/nominal data. We encode the data from low to 0 and high to 2, etc. Then we created dummy variables for the categorical data before merging the 2 tables
### Model Building
Our target variable is 'buying'. The rest of the variables are x. We perform a train-test split of 20% test. We then train the random forest classifier using the data provide. The accuracy is about 27%.
### Prediction
Since we are given the following conditions, 
1. Maintenance = High
2. Number of doors = 4
3. Lug Boot Size = Big
4. Safety = High
5. Class Value = Good

However, we are not given the number of persons. Therefore we used all 3 combinations for the the prediction. Interestingly, all 3 combination for the persons results in the prediction of 'low' buying price.