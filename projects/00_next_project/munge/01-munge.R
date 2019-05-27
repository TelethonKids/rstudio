#' Example preprocessing script.
#' Created 21-May-2019 by Paul Stevenson
#' Updated 27-May-2019 by Paul Stevenson

#### libraries ----

library(ProjectTemplate)
library(dplyr)

#### helper functions ----

source("R/99-helper.R")

#### load data ----

load("data/dat.RData")

#### Data wrangling ----


#### save data ----

cache("dat")
