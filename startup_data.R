library(dplyr)
library(tidyverse)

####################
## Cities Dataset ##
####################
getwd()

cities <- read.csv("Best Cities for Startups.csv", header = T)
colnames(cities)[6] <- "quantity.score"
colnames(cities)

# Mean total score by city
cities_totalscore <- cities %>%
  group_by(city) %>%
  summarise(mean = mean(total.score))


# Mean Quantity score by city
cities_quanscore <- cities %>%
  group_by(city) %>%
  summarise(mean = mean(quantity.score))

# Mean Quality score by city
cities_qualscore <- cities %>%
  group_by(city) %>%
  summarise(mean = mean(quality.score))

#######################
## Countries Dataset ##
#######################

countries <- read.csv("Best Countries for Startups.csv", header = T)

# Mean total score by country
countries_totalscore <- countries %>%
  group_by(country) %>%
  summarise(mean = mean(total.score))

# Mean Quantity score by Country
countries_quanscore <- countries %>%
  group_by(country) %>%
  summarise(mean = mean(quantity.score))

# Mean Quality score by Country
countries_qualscore <- countries %>%
  group_by(country) %>%
  summarise(mean = mean(quality.score))
