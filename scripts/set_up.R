library(dplyr)

state_codes <- read.csv('data/state_codes.csv', stringsAsFactors = FALSE)
hate_crimes <- read.csv("data/hate_crimes.csv", stringsAsFactors = FALSE)

# Used in maps / correlation charts
hate_crimes_formatted <- hate_crimes %>%
  select(state, median_household_income, gini_index,
         share_population_with_high_school_degree, share_unemployed_seasonal,
         hate_crimes_per_100k_splc) %>%
  left_join(state_codes, by="state")
