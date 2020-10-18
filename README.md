# Final_Project
I've pushed several files to my branch.
1. Movies_ERD.PNG is a diagram of the downloaded movie files and now they relate to one another. I'll update this diagram as the database develops.
2. clean_movie_metadata.ipynb is a notebook with several of the columns cleaned up for loading to the database.  
  - The "belongs_to_collection" was converted from a dictionary to a boolean.  If there is data in that column for a row, it is assigned True.  Otherwise, it is False.
  - The "genres" column is converted from a list of dictionaries to 11 columns representing the 10 genres plus an "others' column.  If the genre is in the "genres" column, its corresponding column is marked True.
  -  The "spoken_languages" column is converted from a list of dictionaries to a count of languages for that movie.
  - Coding started for unpacking the "production_companies" column.  We think this will be one of the most important columns in the database.
3. connect_to_db.ipynb has the code to connect to the database on AWS. Our database can be seen here on pgAdmin:

![](Sample_database.PNG)

