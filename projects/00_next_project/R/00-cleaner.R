# Reads raw delimited data and saves as RDS files in data folder
# created 25-May-2018 by Paul Stevenson

library(readr)
library(readstata13)

dat <- read_csv("data-raw/file.csv")

devtools::use_data("var_name", overwrite = T)