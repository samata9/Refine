#Import File
#refine_original <- read.csv(file.choose(), header=TRUE)
setwd("C:/Users/pankaj/Desktop/Samata/Springboard/Data Wrangling Exercise 1/")
refine_original <- read.csv("refine_original.csv", header = TRUE)

#attach(refine_original)
refine_updated <- refine_original

#Change company into lowercase
refine_updated$company <- tolower(refine_updated$company)

library (dplyr)
library(tidyr)
library(magrittr)

#Spell check all company names and replace with correction on updated file
# why use mutate when I can just do equal here?  Mutate not working

refine_updated$company = ifelse(grepl("ph.*",refine_updated$company),"phillips",
ifelse(grepl("ak.*",refine_updated$company),"azko",ifelse(grepl("fi.*",refine_updated$company),"phillips",
  ifelse (grepl("un.*",refine_updated$company),"Unilever",refine_updated$company))))


#Separate Product code and number - works by itself but not when i run the whole code
separate(refine_updated, "Product.code...number", c("product_code", "product_number"), sep="-")



refine_original
refine_updated

