# Purpose: Simulates marriage licence data
# Author: Sakura Noskor
# Date: 2024-09-19
# Contact: sakura.noskor@mail.utoronto.ca
# License: MIT
# Pre-requisites:
# Any other information needed? 


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
# [...UPDATE THIS...]



#### Save data ####



# get package
package <- show_package("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")
package

# get all resources for this package
resources <- list_package_resources("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% get_resource()


write_csv(data, file = "data/raw_data/mariage_licence.csv")

