#### Preamble ####
# Purpose: Simulates marriage licence data
# Author: Sakura Noskor
# Date: 2024-09-19
# Contact: sakura.noskor@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)




#### Simulate data ####


start_date <- as.Date("2023-01-01")
end_date <- as.Date("2023-12-31")

number_of_dates<-100

set.seed(304)

data <- tibble(
  date = as.Date(runif(n = number_of_dates, min = as.numeric(start_date), max = as.numeric(end_date)),  origin = "1970-01-01"), 
  number_of_marriage = rpois(n=100, lambda=15))

view(data)

write_csv(data, file = "data/raw_data/raw.csv")
