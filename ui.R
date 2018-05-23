#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

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
