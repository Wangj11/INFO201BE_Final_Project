library(shiny)
library(dplyr)
library(ggplot2)
library(plotly)
source("scripts/set_up.R")
source("scripts/build_map.R")
source("scripts/build_scatter.R")


shinyServer(function(input, output) {
  output$by_state <- renderPlotly({
    return(build_map(hate_crimes_formatted, input$compare_maps))
<<<<<<< HEAD
  }) 
  output$scatter <- renderPlotly({
    return(build_scatter(hate_crimes_formatted, input$charts))
  }) 
=======
  })
  output$by_hate_crimes <- renderPlotly({
    return(build_map(hate_crimes_formatted, input$charts))
  })
>>>>>>> 034a260594f32c17f6248b249b86427f5d537de9
})
