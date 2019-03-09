# vignettes
More detailed descriptions of R functions/workdflows are kept within the 
vignettes directory of packages. Reports can also be kept in this directory, and
will be made available in *inst/doc* folder after running:

    devtools::buildVignettes()

When a template is used, such as the Telethon Kid HTML report or ioslides,
copy the .Rmd file and any associtated files that are included in the knit into
the vignettes folder.
