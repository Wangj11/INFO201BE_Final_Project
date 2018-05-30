library(shiny)
library(dplyr)
library(ggplot2)
library(shinythemes)
source("scripts/set_up.R")
source("scripts/build_map.R")


shinyUI(navbarPage(tags$h1("Hate Crimes Data"),
  theme = shinytheme("sandstone"),
  # Tab 1
  tabPanel(
    tags$h2("About"),
    tags$link(rel = "stylesheet", type = "text/css", href = "project.css"),
    sidebarLayout(
      position = "left",
      sidebarPanel(
        tags$h3("About the Team"),
        tags$h3(
          "Raymond Huang", tags$br(),
          "Sarah Liu", tags$br(),
          "Joseph Wang", tags$br(),
          "Yu-won Youn"
        )
      ),
      mainPanel(tags$p(
        "Compared to other countries around the world, the US
                       sees a large number of hate crimes where people are
                       discriminated against for their identities. This site
                       allows users to observe the correlations
                       between income inequality and hate crimes. The data used
                       in this site is a collection of data from a variety of
                       sources including the Census Bureau, FBI, Southern
                       Poverty Law Center, Kaiser Family Foundation, and more.
                       The dataset includes information about median household
                       income, gini index,and various information about the
                       status of inhabitants by state as well as the number of
                       hate crimes.",
        tags$br(), "This site shows the relationship hate crimes and these
                       various statistics in different ways to see where the
                       focus should be when trying to lower hate crimes. The
                       maps and charts allow for comparison between the various
                       information."
      ))
    )
  ),

  # Tab 2
  tabPanel(
    tags$h2("Maps"),
    sidebarLayout(
      sidebarPanel(
        selectInput("compare_maps",
          label = tags$h3("Compare With:"),
          choices = list(
            "Median Household Income" = "median_household_income",
            "Gini Index" = "gini_index",
            "Population with HS Degree" =
              "share_population_with_high_school_degree",
            "Seasonal Unemployed" = "share_unemployed_seasonal"
          ),
          selected = "Median Household Income"
        ),
        tags$p("The top map shows the number of hate crimes for every 100k
               people while the map below shows the selected information,
               allowing for quick comparisons between the two.")
      ),
      mainPanel(plotlyOutput("static_map"), plotlyOutput("by_state"))
    )
  ),

  # Tab 3
  tabPanel(
    tags$h2("Correlation Charts"),
    sidebarLayout(
      sidebarPanel(
        selectInput("charts",
          label = tags$h3("Correlate data with:"),
          choices = list(
            "Median Household Income" = "median_household_income",
            "Gini Index" = "gini_index",
            "Population with HS Degree" =
              "share_population_with_high_school_degree",
            "Seasonal Unemployed" = "share_unemployed_seasonal"
          ),
          selected = "Median Household Income"
        ),
        tags$p("The chart created shows the relationship between hate crimes and
               the selected information on a scatter plot, allowing for quick
               visualization of any correlation between the two.")
      ),
      mainPanel(
        plotlyOutput("scatter")
      )
    )
  )
)) # navbarPage
