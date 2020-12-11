#' munge/01-munge.R
#' 
#' Perform any calculations/joining of data sets to create the main analysis
#' data-set for the project. Cached data will be saved to the "cache" directory.
#' 
#' Updated by Paul Stevenson 19-May-2020
#' 

#### Project automation with ProjectTemplate ----

ProjectTemplate::load.project(munging = FALSE, cache_loading = FALSE, data_loading = TRUE)

#### helper functions ----

source("R/99-helper.R")

#### Data wrangling ----

dat <- dat_raw

#### save data ----

cache("dat")
