library(shiny)
library(dplyr)
library(ggplot2)
library(shinythemes)
source("scripts/set_up.R")
source("scripts/build_map.R")


shinyUI(navbarPage(tags$h1("Data Crimes Data"),
  theme = shinytheme("sandstone"),
  #Tab 1
  tabPanel(
    tags$h2("About"),
    tags$link(rel = "stylesheet", type = "text/css", href = "project.css"),
    sidebarLayout(position = "left",
      sidebarPanel("About the Team"),
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
                       information.")))),
  
  #Tab 2
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
            "Seasonal Unemployed" = "share_unemployed_seasonal"),
          selected = "Median Household Income")),
      mainPanel(plotlyOutput("static_map"), plotlyOutput("by_state")))),
  
  #Tab 3
  tabPanel(
    tags$h2("Correlation Charts"),
    sidebarLayout(
      sidebarPanel(
        selectInput("charts",
                    label = "Correlate data with:",
                    choices = list( 
                      "Median Household Income" = "median_household_income", 
                      "Gini Index" = "gini_index", 
                      "Population with HS Degree"  = 
                        "share_population_with_high_school_degree", 
                      "Seasonal Unemployed"= "share_unemployed_seasonal"),
                    selected = "Median Household Income")),
      mainPanel(
        plotlyOutput("scatter")
      )))
)) #navbarPage
