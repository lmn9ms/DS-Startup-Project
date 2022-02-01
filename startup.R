library(dplyr)
library(tidyverse)
library(readxl)
setwd("~/Downloads/DS Data")

startup <- read.csv("Startup Metrics by City",header = TRUE)
startup$startup_no <- as.factor(startup$startup_no)
startup$markets_no <- as.factor(startup$markets_no)
startup$city_no <- as.factor(startup$city_no)

coworking <- read_xlsx("coworking.xlsx")

industry <- read.csv("7ba47fc0-0006-45d7-a975-4cefcc68f070_SECFormDFiling-2018.csv")
colnames(industry)[8]<- "City"
industry$primary_issuer_city <- str_to_title(industry$primary_issuer_city)

happy <- read_xlsx("city-prosperity-index-country-xlsx-1.xlsx")
colnames(happy) <- happy[1,]
happy <- happy[-1,]

test <- merge(industry, happy,by="City",all = FALSE)
merged <-  select(test, -2:-3,-5,-7,-8,-10:-13,-15,-17,-18:-24,-27:-28,-31:-32,-35,-36:-45,-47:-50)
