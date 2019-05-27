#' This is the starting point for the project. load.project will load the
#' data and run any scripts in the munge directory.
#' Created by Paul Stevenson 17-May-2018
#' Updated 27-May-2019 by Paul Stevenson

#### libraries ----

library(ProjectTemplate)
library(dplyr)

#### Project automation with Project Template ----

load.project(munging = TRUE, data_loading = TRUE)

#### load data ----

# load("data/dat.RData")
# load("cache/dat.RData")

#### helper functions ----

source("R/99-helper.R")

#### Data wrangling/cleaning ----


#### Analysis ----
