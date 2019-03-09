# R
R scripts will be stored in the R directory. By default 00-helper.R will contain
helper functions that can be documented appropriately to produce help files.
01-main.R will hold the main analysis code that shouldinclude the following lines
of code, per 
[ProjectTemplate documentation](http://projecttemplate.net/getting_started.html):

    library('ProjectTemplate)
    load.project()

that will initiate the project environment per the configuration in
*config/global.dcf*.