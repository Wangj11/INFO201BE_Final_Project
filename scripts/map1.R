library(plotly)

source("scripts/set_up.R")

df$hover <- with(hate_crimes_formatted(), paste0(state, median_household_income,
                                              "Dairy", gini_index, "<br>",
                                              "Fruits", share_population_with_high_school_degree, "<br>",
                                              "Veggies",
                                              share_unemployed_seasonal
                                              ))


# give state boundaries a white border
l <- list(color = toRGB("white"), width = 2)
# specify some map projection/options
g <- list(
  scope = 'usa',
  projection = list(type = 'albers usa'),
  showlakes = TRUE,
  lakecolor = toRGB('white')
)

p <- plot_geo(hate_crimes_formatted, locationmode = 'USA-states') %>%
  add_trace(
    z = ~gini_index, text = ~hover, locations = ~state,
    color = ~hate_crimes_per_100k_splc, colors = 'Purples'
  ) %>%
  colorbar(title = "Millions USD") %>%
  layout(
    title = '2011 US Agriculture Exports by State<br>(Hover for breakdown)',
    geo = g
  )