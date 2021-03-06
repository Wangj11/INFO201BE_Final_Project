library(plotly)
library(stringr)

build_scatter <- function(data, xvar = "nothing",
                          yvar = "hate_crimes_per_100k_splc") {
  # Get x and y max
  xmax <- max(data[, xvar]) * 1.5
  ymax <- max(data[, yvar]) * 1.5

  # Plot data
  plot_ly(
    color = "hotpink",
    x = data[, xvar],
    y = data[, yvar],
    mode = "markers",
    text = data[, "state"],
    marker = list(
      opacity = .4,
      size = 10
    )
  ) %>%
    layout(
      title = paste(
        str_to_title(gsub("_", " ", yvar)), "vs",
        str_to_title(gsub("_", " ", xvar))
      ),
      xaxis = list(
        range = c(0, xmax),
        title = str_to_title(gsub("_", " ", xvar))
      ),
      yaxis = list(
        range = c(0, ymax),
        title = str_to_title(gsub("_", " ", yvar))
      )
    ) %>%
    return()
}
