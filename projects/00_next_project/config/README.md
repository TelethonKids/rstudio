# config
================

ProjectTemplate is an R package that helps you organise your statistical
analysis projects.

The [ProjectTemplate
website](http://projecttemplate.net/getting_started.html) has
instructions on how to use all the features of this package.

To load you need to run the following two lines of R code:

    library('ProjectTemplate')
    load.project()

After you enter the second line of code, you will see a series of
automated messages as ProjectTemplate goes about doing its work. This
work involves:

  - Reading in the global configuration file contained in _config_.
  - Reading in any datasets stored in _data_ or _cache_.
  - Pre-processing your data using the files in the _munge_ directory.

Once that’s done, you can execute any code you would like. For every
analysis you create, we would recommend putting a separate file in the `R`
directory. If the files start with the two lines mentioned above:

    library('ProjectTemplate')
    load.project()

You will have access to all of your data, already fully pre-processed, and
all of the libraries you want to use.

For more details about ProjectTemplate, see <http://projecttemplate.net>.
