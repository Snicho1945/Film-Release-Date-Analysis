# Analysis of the Kaggle Movies Dataset 
![](Images/wordCloud.png)

The Data was sourced from Kaggle.com "The Movies Dataset" https://www.kaggle.com/rounakbanik/the-movies-dataset.

## Purpose
Our objective is to determine the optimal release dates for movies based on the time of year and genre.
This information may help the entertainment industry maximize gains made from movies as well as be an important tool for independent studios lacking a big budget.

## Roles
This project is a collaborative effort amongst cohorts.

      Presentation: Jeff https://github.com/JeffHastings
      Database/Github: Pam https://github.com/mspamelalea
      Machine Learning: Matthew https://github.com/MatthewTichenor
      Dashboard: Steven https://github.com/Snicho1945
      Test/Review: All

Find all the tools used for this project in the [requirements.txt file.](https://github.com/Snicho1945/Final_Project/blob/main/requirements.txt)

##  **Presentation** 
The presentation has been prepared in Google Slides and includes images from the Tableau dashboard:
- Budget vs Revenue by Month
- By Country Heatmap
- Revenue by Genre by Month
- Distribution of films by month

[Click here for the presentation.](https://docs.google.com/presentation/d/1Hq-Y0TJ5y4ZmTBVe_Reaw9OvmiGiBZfVirvh4pVBBxY/edit?usp=sharing)

## **Database**
The database is a PostgreSQL relational database hosted on AWS. pgAdmin4 was used to build and manipulate the database. Code for this is found in the [SQLdbScripts ](https://github.com/Snicho1945/Final_Project/tree/main/SQLdbScripts)folder. The data was pulled in from the provided csv files using Python/Pandas in a Jupyter Notebook. Sample code for retreiving data and joining tables can be found in the [Resources ](https://github.com/Snicho1945/Final_Project/tree/main/Resources)folder. The code for this and some subsequent data cleanup are in [clean_movie_metadata.ipynb](https://github.com/Snicho1945/Final_Project/blob/main/clean_movie_metadata.ipynb). 
__Database Access__: We access the database for analysis by using ___psycopg2___ library and setting cursors to hold the data within Jupyter Notebook.  This code is inclued in the [Linear_Regression_ML_Analysis.ipynb](https://github.com/Snicho1945/Final_Project/blob/main/Linear_Regression_ML_Analysis.ipynb) notebook.
 
 There are 5 tables housing the data as shown in this QuickDB ERD:

![](Images/MoviesERD_5.PNG)

### Data Exploration for Database Load
The database has five tables.
1. ___movies_metadata___ - This is the main, driving table.  It contains basic information about the movie including title, release date, production company and revenue. 

Columns with zero revenue were dropped because our ML analysis depends on revenue-generating movies. Duplicates in the "id" column were dropped. Columns we would not need for our analysis were dropped: "imdb_id", "homepage", "poster_path", and "overview". The "release_date" column was converted to a datetime data type.

The "belongs_to_collection" column was converted to a boolean type. If there was a non-null value in the column, it was set to True.

The "production_companies" column was a list of dictionaries. Some movies had multiple production companies.  We determined that the first production company listed was the most significant so we used that one to load to the company column.

The "production_countries" column was a list of dictionaries.  Some movies had multiple production countries.  Since production country was not important to our analysis, we put just the first country in the column.

The "spoken_languages" column was a list of dictionaries.  Some movies had multiple languages.  Since language was not important to our analysis, we put just the first language in the column.

2. ___genres___ - This table came from the genres column of the movies_metatdata dataset.  The column was a list of dictionaries with the various genres of the movie listed.  This column has been broken out into a separte id-driven table with the possible genres as columns.  Each genre column is boolean to indicate if that movie is in that genre.

3. ___ratings___ - This table has the "userid" and the "id" as the key fields with the "id" having a many-to-one relationship with the movies_metadata table.  The movieId was converted to a string type and "timestamp" was converted to a datetime data type. NaNs were dropped.

4. ___keywords___ - This table has an "id" field with a many-to-one relationship to movies_metadata.  The "id" was converted to string type and NaNs were dropped.  The keywords field is converted from a list of dictionaries to just a list containing the keywords for that movie.  Duplicate "id" rows were dropped.

 5. ___links___ -  This table is included for future exploration.  If we wanted to included datasets from other sources, this table has the imdb id for joining.



## **Machine Learning** 

![](Images/companyCorrelation.PNG)

## Dataframe Visual File

This file was created to read the data frame and showcase a couple of graphs that will paint the picture of the data. In the file, the reader will see bar graphs and scatter graphs. The bar graphs showcase important column trends that we as a team would like to highlight. The heatmap is showcasing the trends within the statics of the data. Lastly, the scatter chart shows the relationships of the columns that are important for answering the research question.

## Top 15 movies file

This file we are exploring the genres of each movie and how it compares to the features(budget, release date, and reveune) of the dataframe.The top 15 of each genre will be printed in a chart to display the results

## Linear Regression Analysis 

In the engineering process of the Linear regression analysis part of the file, we first must import all of the dependencies for the analysis needs to run smoothly. Connecting the data frame and creating a data frame is the next step.

__Chart #1__ We are focusing on the earnings of the movies and the budget. To see how they correlate with the release date. The first chart is the scatter plot showcasing the data based on the column values of earnings and budget. The variables are X=Budget and y=Revenue. The second chart places the linear regression line to help show the relationship between the money made and the cost-effectiveness of the movies. We ran a regression score, and it came to be .55.

__Chart #2__ We are focusing on the cost-effectiveness of the movies during the normal calendar year. This will allow us as a team to see how they correlate with one another. The first chart is the scatter plot showcasing the data based on the revenue and month. The variables are X=Month and y =Revenue. In the second chart, we place a linear regression line to help show or the relationship between the month and budget. We ran a regression score, and it came to be 0.001421879656713032.

__Chart #3__ We are focusing on the Release time during the holidays(months 11 and 12) and the money earned during months November and December versus any other time of the year. The first chart is the scatter plot showcasing the data based on the variable's holiday and earnings. The variables are X=Holiday and y=Revenue. In the second chart, we placed a linear regression line to help show or the relationship between the variable's holiday and earnings. We ran a regression score, and it came to be 0.006939319131513466.

__Chart #4__ We are focusing on the Release time and the money earned. The first chart is the scatter plot showcasing the data based on the variables release date and revenue. The variables are X=release date and y=Revenue. In the second chart, we place a linear regression line to help show or the relationship between the variable's release date and earnings. We ran a regression score, and it came to be 0.001421879656713032.

## Machine Learning Analysis File 

The first task is to clean the data. We flirted through the data frame to fit alongside the machine learning model. What we are looking to clean is the data to eliminate skewness and replace missing values and only keep the columns that will help answer the question at hand. As the data frame was being molded it represents a live environment of the data frame. In the analysis, we clean the data to be showcase fair results and showcase values even if the original value was not presented and we replace the value with a zero. So we clean the data all the way through.

The engineering process of this machine learning is to clean the data to what we want to represent within the model and let random forest to make multiple trees off of the set data in the test we create in part 1 and part 2. After confirming the trees we will insert a decision tree to calculate and make a summary. Based on the results we can then run the code through analysis and showcase the data and how it performs and what rating, revenue, and title perform will during its release date. This will show what movie title did the best and made the most money.

We will split the training set into two parts. We will train the data set to look at the release date which is the x variable and let the y variable be revenue. In the next test, we will test the x variable genre and y being the revenue. This will give users a clear sense of what movie is making money base on release date and which genre is more popular during the time of release.

 ## **Dashboard** 
 ![](Images/Story.PNG)

- Our charts, dashboards and story were built in Tableau. [Click here to see the storyboard](https://public.tableau.com/profile/pam.hamrick#!/vizhome/FilmReleaseDateAnalysis/FilmReleaseDateAnalysis?publish=yes). 
- Tree Map depicting studio revenue and movie count
- Top 10 Production Company Revenue by Month in pie charts
- Breakdown of graphs from ML with descriptive text
- Top 3 genres in bar/line charts
- Movie Count and Revenue per Month in a bar/line chart
- Budget and Revenue comparison bar chart
- Correletion chart from the linear regression
- Features vs Revenue from the linear regression in a horizontal bar chart
- Resources wrap-up
- Additional charts not shown in the story can be found here:
[FRDA Data](https://public.tableau.com/profile/steven.nichols#!/vizhome/FRDAAllData/Action)



