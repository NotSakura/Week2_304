#### Preamble ####
# Purpose: Simulates marriage licence data
# Author: Sakura Noskor
# Date: 2024-09-19
# Contact: sakura.noskor@mail.utoronto.ca
# License: MIT
# Pre-requisites:
# Any other information needed? 

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/mariage_licence.csv")


cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  separate(col = time_period, 
           into = c("year", "month"), 
           sep = "-") |>
  mutate(date = lubridate::ymd(paste(year, month, '01', sep = "-")) )
  

#### Save data ####
write_csv(cleaned_data, "data/raw_data/cleaned_data.csv")
