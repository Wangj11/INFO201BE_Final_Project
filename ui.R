library(shiny)
library(dplyr)
library(ggplot2)
library(shinythemes)
source("scripts/set_up.R")
source("scripts/build_map.R")

# Define UI for application that draws a histogram
shinyUI(navbarPage(tags$h1(
                   "Data Crimes Data"),
  theme = shinytheme("sandstone"),

  # Application title
  tabPanel(
    tags$h2("About"),
    tags$link(rel = "stylesheet", type = "text/css", href = "project.css"),
    # Sidebar with a slider input for number of bins
    sidebarLayout(position = "left",
      sidebarPanel("About the Team"), # sidebarPanel - About
      mainPanel(tags$p("This site allows users to observe the correlations
                       between income inequality and hate crimes. The data used
                       in this site is a collection of data from a variety of
                       sources including the Census Bureau, FBI, Southern
                       Poverty Law Center, Kaiser Family Foundation, and more.
                       The dataset includes information about median household
                       income, gini index,and various information about the
                       status of inhabitants by state as well as the number of 
                       hate crimes."),
                tags$p("This site shows the relationship hate crimes and these
                       various statistics in different ways to see where the
                       focus should be when trying to lower hate crimes. The
                       maps and charts allow for comparison between the various
                       information.")
                ) # mainPanel
    ) # sideBarLayout
  ), # tabPanel - Hate Crimes
  tabPanel(
    tags$h2("Maps"),
    sidebarLayout(
      sidebarPanel(
        selectInput("compare_maps",
          label = "X Variable",
          choices = list(
            "Median Household Income" = "median_household_income",
            "Gini Index" = "gini_index",
            "Population with HS Degree" =
              "share_population_with_high_school_degree",
            "Seasonal Unemployed" = "share_unemployed_seasonal"
          ),
          selected = "Median Household Income"
        )
      ),
      mainPanel(plotlyOutput("by_state"))
    )
  ),
  tabPanel(
    tags$h2("Correlation Charts"),
    sidebarLayout(
      sidebarPanel(
        selectInput("charts",
<<<<<<< HEAD
                    label = "Correlate data with:",
                    choices = list( 
                      "Median Household Income" = "median_household_income", 
                      "Gini Index" = "gini_index", 
                      "Population with HS Degree"  = 
                        "share_population_with_high_school_degree", 
                      "Seasonal Unemployed"= "share_unemployed_seasonal"),
                    selected = "Median Household Income")
      ), #sidebarPanel - Correlation Charts
      mainPanel(
        plotlyOutput("scatter")
      ) #mainPanel - Correlation Charts
    ) #sidebarLayout - Correlation Charts
  ) #tabPanel - Correlation Charts
)) #navbarPage
=======
          label = "Correlate data with:",
          choices = list(
            "Median Household Income" = "median_household_income",
            "Gini Index" = "gini_index",
            "Population with HS Degree" =
              "share_population_with_high_school_degree",
            "Seasonal Unemployed" = "share_unemployed_seasonal"
          ),
          selected = "Median Household Income"
        )
      ), # sidebarPanel - Correlation Charts
      mainPanel() # mainPanel - Correlation Charts
    ) # sidebarLayout - Correlation Charts
  ) # tabPanel - Correlation Charts
)) # navbarPage
>>>>>>> 034a260594f32c17f6248b249b86427f5d537de9
