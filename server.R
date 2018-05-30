library(shiny)
library(dplyr)
library(ggplot2)
library(plotly)
source("scripts/set_up.R")
source("scripts/build_map.R")
source("scripts/build_scatter.R")


shinyServer(function(input, output) {
  
  #For the maps tab
  output$by_state <- renderPlotly({
    return(build_map(hate_crimes_formatted, input$compare_maps))
  }) 
  
  #For the correlation charts tab
  output$scatter <- renderPlotly({
    return(build_scatter(hate_crimes_formatted, input$charts))
  }) 
  
  output$static_map <- renderPlotly({
    return(build_static_map(hate_crimes_formatted))
  })

})
