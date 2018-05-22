library(dplyr)


hate_crimes <- read.csv("data/hate_crimes.csv", stringsAsFactors = F)

data_formatted <- hate_crimes %>%