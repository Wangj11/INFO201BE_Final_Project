library(dplyr)


hate_crimes <- read.csv("data/hate_crimes.csv", stringsAsFactors = F)

hate_crimes_formatted <- hate_crimes %>%
  select(state, median_household_income, gini_index,
         share_population_with_high_school_degree, share_unemployed_seasonal,
         hate_crimes_per_100k_splc)
