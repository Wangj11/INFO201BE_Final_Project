library(shiny)
library(dplyr)
library(ggplot2)
library(shinythemes)
source("scripts/set_up.R")
source("scripts/build_map.R")

hate_crimes_names <- colnames(hate_crimes_formatted)

# Define UI for application that draws a histogram
shinyUI(navbarPage(tags$h1(
                   "Data Crimes Data"),
  theme = shinytheme("sandstone"),

  # Application title
  tabPanel(
    tags$h2("About"),
    tags$link(rel = "stylesheet", type = "text/css", href = "project.css"),
    # Sidebar with a slider input for number of bins
    sidebarLayout(
      sidebarPanel(), # sidebarPanel - About

      # Show a plot of the generated distribution
      mainPanel() # mainPanel
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
