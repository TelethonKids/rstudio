# data-raw
It is suggested that raw data (e.g. txt, csv, sta, etc.) is stored in this 
directory. The purpose of `01-cleaner.R` is to read in the raw data and perform 
cleaning operations (such as varibale format conversion, converting " " to NA, 
...) and save the cleaned data in the data directory with:

    devtools::use_data()

Data processing/analysis should not be performed by this script.

By default, raw data is ignored by git as there should be no changes to the raw 
data files.
