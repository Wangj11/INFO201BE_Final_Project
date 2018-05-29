library(shiny)
library(dplyr)
library(ggplot2)
library(plotly)
source("scripts/set_up.R")
source("scripts/build_map.R")

shinyServer(function(input, output) {
  output$by_state <- renderPlotly({
    return(build_map(hate_crimes_formatted, input$income_ineq))
  }) 
})
