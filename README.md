# INFO201BE_Final_Project
Final project for INFO201 Spring 2018

## Project Description

### About the Dataset
Our [dataset](https://github.com/fivethirtyeight/data/tree/master/hate-crimes) is a static .csv file from FiveThirtyEight, which is a statistics driven news and analysis site that shares its stories online through github. The dataset in question is a collection of data from a variety of sources including the Census Bureau, FBI, Southern Poverty Law Center, Kaiser Family Foundation, and more. This data was consolidated in order to answer the question of whether income inequality led to more hate crimes so the data it contains is not a comprehensive view of hate crimes. The dataset includes information about median household income, gini index, number of hate crimes, and various information about the status of inhabitants by state. 

Though many people may want to know the information in this dataset, our intended audience is activists that want to make a change. By answering the questions below and seeing how they correlate, activists will be able to see where to take action and what next steps to take in making the Unites States a safer place for everyone. 

### Questions
- Which state has the most hate crime reports?
- Where are the highest rates of income inequality?
- Where are the areas of high unemployment?
- Where are the areas of lowest average income?
- Where are the areas with the highest non-white populations?
- How many hate crimes occurr in non-white populations/non-citizens?


## Technical Description
For our project the main libraries we will be using are `plotly` and integrating it with `shiny` to create interactive visualizations such as plots and maps. The dataset is already formatted although we may have to add in columns to match percentages to have more customizability for our data. For example, one column lists the share of non-citizens per state but not citizens. We will add in those respective columns so that we can represent them in our visualizations. Some major challenges we expect to run across is wrangling our data to be suitable to plot and working with `plotly` and integration with `shiny`. Previously in class we have come across bugs with plotly and building in interactions.