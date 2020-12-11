#' R/00-cleaner.R
#' 
#' Script to read in "raw-data", perform preliminary data cleaning/harmonisation
#' steps and save in the "data" folder for munging.
#' 
#' Updated 11-Dec-2020 by Paul Stevenson
#' 

#### Project automation with ProjectTemplate ----

ProjectTemplate::load.project(munging = FALSE, cache_loading = FALSE, data_loading = FALSE)

#### helper functions ----

source("R/99-helper.R")

#### load data ----

dat_raw <- read_xlsx("data-raw/file.xlsx", sheet = "Sheet1", range = "A1:B2", col_types = c("text"))
# dat_raw <- read_csv(file = "data-raw/file.csv", col_types = cols(.default = "c"))

#### Data cleaning ----


#### save data ----

save(dat_raw, file = "data/dat.RData")
