#' Reads raw delimited data and saves as RDS files in data folder
#' created 25-May-2018 by Paul Stevenson
#' updated 27-May-2019 by Paul Stevenson

#### libraries ----

library(dplyr)
library(readr)
library(readstata13)

#### helper functions ----

source("R/99-helper.R")

#### load data ----

dat <- read_csv("data-raw/file.csv")

#### Data cleaning ----


#### save data ----

save(dat, file = "data/dat.RData")
