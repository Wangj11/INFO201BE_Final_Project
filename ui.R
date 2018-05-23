library(shiny)
library(dplyr)
library(ggplot2)
source("scripts/set_up.R")
#source("scripts/map1.R")

hate_crimes_names <- colnames(hate_crimes_formatted)

# Define UI for application that draws a histogram
shinyUI(navbarPage("Our Project",
  
  # Application title
  titlePanel("Old Faithful Geyser Data"),
  tabPanel("Hate Crimes",
  # Sidebar with a slider input for number of bins 
    sidebarLayout(
      sidebarPanel(
         sliderInput("bins",
                     "Number of bins:",
                     min = 1,
                     max = 50,
                     value = 30)
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
         plotOutput("distPlot")
      ) #mainPanel
    ) #sideBarLayout
  ), #tabPanel - Hate Crimes
  tabPanel("Income Inequality",
    sidebarLayout(
      sidebarPanel(
        selectInput("income_ineq_x",
                    label = "X Variable",
                    choices = list("State" = "state", 
                      "Median Household Income" = "median_household_income", 
                      "Gini Index" = "gini_index", 
                      "Population with HS Degree"  = 
                        "share_population_with_high_school_degree", 
                      "Seasonal Unemployed"= "share_unemployed_seasonal", 
                      "Hate Crime Rates"  = "hate_crimes_per_100k_splc"),
                    selected = "state"),
        selectInput("income_ineq_y",
                    label = "Y Variable",
                    choices = list("State" = "median_household_income", 
                      "Median Household Income" = "median_household_income", 
                      "Gini Index" = "gini_index", 
                      "Population with HS Degree"  = 
                        "share_population_with_high_school_degree", 
                      "Seasonal Unemployed"= "share_unemployed_seasonal", 
                      "Hate Crime Rates"  = "hate_crimes_per_100k_splc"),
                    selected = "state")
      ), #sidebarPanel - Income Inequality
      mainPanel(
        
      ) #mainPanel - Income Inequality
    ) #sidebarLayout - Income Inequality
  ), #tabPanel - Income Inequality
  tabPanel("Tab 3", 
    sidebarLayout(
      sidebarPanel(
        
      ), #sidebarPanel - Tab 3
      mainPanel(
        
      ) #mainPanel - Tab 3
    ) #sidebarLayout - Tab 3
  ) #tabPanel - Tab 3
)) #navbarPage
