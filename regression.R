library(tidyverse)


X <- read_csv('data/Energy.csv') %>% select(colnames(.)[c(-1,-2,-3)])
Y <- read_csv('data/Air pollutant.csv') %>% select(colnames(.)[c(-1,-2,-3)])

for (y_name in colnames(Y)){
  y <- Y %>% select(y_name)
  
}
  