# BuildMap file: function that returns a plotly map
library(plotly)
library(stringr)

# BuildMap function: fill this in with a function that returns a map:
# Derived from: https://plot.ly/r/choropleth-maps/

build_map <- function(data, map.var) {
  if(map.var == "median_household_income")
  {
    curr_color <- "Income ($)"
  }
  else
  {
    curr_color <- "Population (%)"
  }
  # give state boundaries a white border
  l <- list(color = toRGB("white"), width = 2)
  
  # specify some map projection/options
  g <- list(
    scope = 'usa',
    projection = list(type = 'albers usa'),
    showlakes = TRUE,
    lakecolor = toRGB('white')
  )
  
  # Make equation for map color / text
  var.equation <- paste0('~', map.var)
  
  # Plot
  p <- plot_geo(data, locationmode = 'USA-states') %>%
    add_trace(
      z = data[,map.var], text = ~state, locations = ~code,
      color = data[,map.var], colors = c( "deeppink","magenta","hotpink","limegreen", "yellow")
    ) %>%
    colorbar(title = curr_color) %>%
    layout(
      title = str_to_title(gsub("_"," ",map.var)),
      geo = g
    )
   return(p)
}
