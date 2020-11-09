# Analysis of the Kaggle Movies Dataset 
![](Images/wordCloud.png)
The Data was sourced from Kaggle.com "The Movies Dataset" https://www.kaggle.com/rounakbanik/the-movies-dataset

## Roles
This project is a collaborative effort amongst cohorts.

      Presentation: Jeff https://github.com/JeffHastings
      Database/Github: Pam https://github.com/mspamelalea
      Machine Learning: Matthew https://github.com/MatthewTichenor
      Dashboard: Steven https://github.com/Snicho1945
      Test/Review: All

Our purpose is to determine the optimal release dates for movies based on the time of year and genre.
This information could help the entertainment industry maximize gains made from movies as well as be an important tool for independent studios lacking a big budget.

Find all the tools used for this project in the [requirements.txt file.](https://github.com/Snicho1945/Final_Project/blob/main/requirements.txt)

##  **Presentation** 
The presentation is a work-in-progress that is being updated as the project changes and grows. It has been prepared in Google Slides.  
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

Data Analysis:  We are using movie data to determine the optimal release dates for movies based on the time of year and genre. This information could help the entertainment industry maximize gains made from movies as well as be an important tool for independent studios lacking a big budget. The machine learning model will be utilizing is random forest and decision tree within the scope of supervised learning. 

The X variable is release _date and the y variable is revenue. With decision tree, we are building the foundation to create our random forest model. When we use the random forest model, we will be coSnstructing a multitude of decision trees that will reflect revenue versus release date to predict the individual trees. With that information we will see movie performance trends based on the analysis results through machine learning.

The code can be found in 

      1. Linear_Regression_Analysis.ipynb
 
      2. Project Final Visual.ipynb


 ## **Dashboard** 
- Tableau will used for the dashboard 
- Mosaic chart depicting studio revenue and picture count
- Graphs depicting movie success by release date with genre
- Breakdown of graphs from ML with descriptive text
- World maps showing a ranking of countries with revenue and movie count, separated
- Scatter plot with regression
- Outliers
- Distribution pie chart 5-10
- Another scatter plot and regression by genre
- Synergy graphs need to complement each other

