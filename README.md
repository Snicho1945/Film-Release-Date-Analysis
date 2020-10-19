# Final_Project
## Segment 1
### Circle Role (DB) Notes
I've pushed several files to my branch.
1. MoviesERD_2.PNG is a diagram of the downloaded movie files and how they relate to one another. I'll update this diagram as the database develops.
![](MoviesERD_2.PNG)
2. Resources/movies_erd_code.txt is the code used to build the ERD in QuickDB
3. clean_movie_metadata.ipynb is a notebook with several of the columns cleaned up for loading to the database which is hosted on AWS. We will be dropping many of these columns as they are not relevant to our project goal.  I will update as we work through which columns are needed.
  - The "belongs_to_collection" was converted from a dictionary to a boolean.  If there is data in that column for a row, it is assigned True.  Otherwise, it is False.
  - The "genres" column is converted from a list of dictionaries to 11 columns representing the 10 genres plus an "others' column.  If the genre is in the "genres" column, its corresponding column is marked True.
  -  The "spoken_languages" column is converted from a list of dictionaries to a count of languages for that movie.
  - Coding started for unpacking the "production_companies" column.  We think this will be one of the most important columns in the database.
3. Google Colab has the code to connect to the database on AWS. Here's the link:
https://colab.research.google.com/drive/13_1UyDf0L24geuSm_P4nfJNhYh0hSisM?usp=sharing

Our database can be seen here on pgAdmin:

![](Sample_database.PNG)

