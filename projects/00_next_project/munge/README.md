munge
================

Project processing scripts in the munge directory are automatically executed 
by `ProjectTemplate::load.project(munging = TRUE)`.

Scripts in the munge directory are executed sequentially; script files should
be numbered.

Default munge files are:

  - _01-munge.R_ - Data wrangling processes including applying calculations and
  joining data from different sources
  - _02-models.R_ - R code for performing statistical analysis

`ProjectTemplate::cache("var_name")` would be used to store the resulting data
in the _cache_ directory.
