# This is the starting point for the project. load.project will load the
# data and run any scripts in the munge directory.
# Created by Paul Stevenson 17-May-2018

library('repmis')

LoadandCite(pkgs = c("tidyverse", "lubridate", "ProjectTemplate", "repmis", "biometrics"),
            file = "report/assets/bib/packages.bib")

load.project(munging = TRUE, data_loading = TRUE)
