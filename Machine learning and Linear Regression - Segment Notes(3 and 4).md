Dataframe Visual File

This file was created to read the data frame and showcase a couple of graphs that will paint the picture of the data. In the file, the reader will see bar graphs and scatter graphs. The bar graphs showcase important column trends that we as a team would like to highlight. The heatmap is showcasing the trends within the statics of the data. Lastly, the scatter chart shows the relationships of the columns that are important for answering the research question.


Top 15 movies file

This file we are exploring the genres of each movie and how it compares to the features(budget, release date, and reveune) of the dataframe.The top 15 of each genre will be printed in a chart to display the results


Linear Regression Analysis description

In the engineering process of the Linear regression analysis part of the file, we first must import all of the dependencies for the analysis needs to run smoothly. Connecting the data frame and creating a data frame is the next step. 
 
Chart  #1
We are focusing on the earnings of the movies and the budget.
To see how they correlate with the release date. The first chart is the scatter plot showcasing the data based on the column values of earnings and budget. The variables are  X=Budget and y=Revenue. The second chart places the linear regression line to help show the relationship between the money made and the cost-effectiveness of the movies. We ran a regression score, and it came to be .55.

Chart #2 
We are focusing on the cost-effectiveness of the movies during the normal calendar year.  This will allow us as a team to see how they correlate with one another. The first chart is the scatter plot showcasing the data based on the revenue and month. The variables are X=Month and y =Revenue. In the second chart, we place a linear regression line to help show or the relationship between the month and budget. We ran a regression score, and it came to be 0.001421879656713032. 

Chart # 3 
We are focusing on the Release time during the holidays(months 11 and 12) and the money earned during months November and December versus any other time of the year. The first chart is the scatter plot showcasing the data based on the variable's holiday and earnings. The variables are X=Holiday and y=Revenue. In the second chart, we placed a linear regression line to help show or the relationship between the variable's holiday and earnings. We ran a regression score, and it came to be 0.006939319131513466.

Chart #4 
We are focusing on the Release time and the money earned. The first chart is the scatter plot showcasing the data based on the variables release date and revenue. The variables are X=release date and y=Revenue. In the second chart, we place a  linear regression line to help show or the relationship between the variable's release date and earnings. We ran a regression score, and it came to be 0.001421879656713032.


Machine Learning Analysis File description

The first task is to clean the data. We flirted through the data frame to fit alongside the machine learning model. What we are looking to clean is the data to eliminate skewness and replace missing values and only keep the columns that will help answer the question at hand. As the data frame was being molded it represents a live environment of the data frame. In the analysis, we clean the data to be showcase fair results and showcase values even if the original value was not presented and we replace the value with a zero. So we clean the data all the way through.

The engineering process of this machine learning is to clean the data to what we want to represent within the model and let random forest to make multiple trees off of the set data in the test we create in part 1 and part 2. After confirming the trees we will insert a decision tree to calculate and make a summary. Based on the results we can then run the code through analysis and showcase the data and how it performs and what rating, revenue, and title perform will during its release date. This will show what movie title did the best and made the most money.

We will split the training set into two parts. We will train the data set to look at the release date which is the x variable and let the y variable be revenue. In the next test, we will test the x variable genre and y being the revenue. This will give users a clear sense of what movie is making money base on release date and which genre is more popular during the time of release.

# Segment 1 and 2 

The machine learning models that will be used is Supervised learning. Within the machine learning model, the variables will go through two test models random forest and decision trees. The random forest will create many decision trees. Our code will then be randomness through each tree to try to create an uncorrelated forest of trees whose prediction by committee is more accurate than that of any individual tree. The positives in why we choose this model is due to its ability runs efficiently on large databases and it is has a highly accurate classifier. What the team has to watch when using random forest is not to allow the model to run slow because of the code and if the code runs slow the result not able to produce real-time predictions. What you need to truly think of Random forest is it is a predictive modeling tool and not a descriptive tool. The next model test the machine learning will conduct is a decision tree to help identify a strategy most likely to reach our conclusion on what movies made the most based on the released date.The good thing about using a decision tree is that it forces the consideration of all possible outcomes of a decision.Which then maps and then traces out each path to a conclusion. Then it helps creates a comprehensive analysis of the consequences along each branch and identifies decision nodes that need further analyses. The only downside is if a small change could not allow the process of the analysis. The overall decision tree is very unstable and you must have the data frame prepared or the results will be the code will not run.

# Segment 3 Notes

For the final project, we steered away from the decision tree and random forest at first was the direction the team wanted to test the models in the machine model. The new command in which we will but the models be cross-validation and neural network models. Model 1 and model 2 will run with cross-validation, and that is a statistical method used to estimate the skill of machine learning models. The pros of using cross-validation are easy to understand, easy to implement, and results in the ability that estimates that generally have a lower bias than other methods. The negative side of using this model is that by using cross-validation the user drastically increases the training time of the model. Earlier you had to train your model only on one training set, but with Cross-Validation, you have to train your model on multiple training sets. In model three we will be keep using cross-validation to focus the machine learning base on the genres and how revenue affects the success of the genres in our data frame. 

# Model scores and how they relate to our test variable

In machine model 1, the regression score is 0.5430834757292722. This is a positive result. The results when the lasso test running is .5423760475256304 which is close to the regression score and the ridge score is 0.5492908370454095. When combining the two and run the elastic net and we get 0.4731431344863092. All test results are in the same ballpark. We can determine the revenue can not solely predict the success of the outcome of the movie.

Model two focuses on the variable month and how revenue may affect success. The regression score is 0.00140294244387984. Though this is a positive integer. We note that this score is less than one and that the month of year truly can not show much how success the movie receives in revenue.

Model three which is the variable genres and testing how revenue play the regression score is 0.00140294244387984. The lasso score is 0.018623876691926555. Noting that both less than 1 percent of the genre still is not a major factor in the success of the movie.

The answer based on the scores composed throughout these test is that revuene played the biggest part in the succus of the title. Other features such as months and genres played a lesser role in the success of the movie in the dataframe.
