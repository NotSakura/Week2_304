# Purpose: Simulates marriage licence data
# Author: Sakura Noskor
# Date: 2024-09-19
# Contact: sakura.noskor@mail.utoronto.ca
# License: MIT
# Pre-requisites:
# Any other information needed? 


#### Workspace setup ####
library(tidyverse)


#### Test data ####


data <- read_csv("data/raw_data/raw.csv")

view(data)


# cant have negative marriage
data$number_of_marriage |> min() <= 0

# test for NA values
all(is.na(data$number_of_marriage))
