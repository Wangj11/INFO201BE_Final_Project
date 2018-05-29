library(shiny)
library(dplyr)
library(ggplot2)
source("scripts/set_up.R")
#source("scripts/map1.R")

hate_crimes_names <- colnames(hate_crimes_formatted)

# Define UI for application that draws a histogram
shinyUI(navbarPage("Our Project",
  
  # Application title
  titlePanel("Hate Crimes Data"),
  tabPanel("About",
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
  tabPanel("Maps",
    sidebarLayout(
      sidebarPanel(
        selectInput("income_ineq",
                    label = "X Variable",
                    choices = list( 
                      "Median Household Income" = "median_household_income", 
                      "Gini Index" = "gini_index", 
                      "Population with HS Degree"  = 
                        "share_population_with_high_school_degree", 
                      "Seasonal Unemployed"= "share_unemployed_seasonal"),
                    selected = "Median Household Income")),
            mainPanel(plotlyOutput("by_state")))),
  tabPanel("Correlation Charts", 
    sidebarLayout(
      sidebarPanel(
        
      ), #sidebarPanel - Correlation Charts
      mainPanel(
        
      ) #mainPanel - Correlation Charts
    ) #sidebarLayout - Correlation Charts
  ) #tabPanel - Correlation Charts
)) #navbarPage
