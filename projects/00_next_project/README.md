Welcome to ProjectTemplate\!
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

This file introduces you to ProjectTemplate, but you should eventually
replace the contents of this file with an introduction to your project.
People who work with your data in the future will thank you for it,
including your future self.

ProjectTemplate is an R package that helps you organise your statistical
analysis projects. Since you’re reading this file, we’ll assume that
you’ve already called `create.project()` to set up this project and
all of its contents.

The [ProjectTemplate
website](http://projecttemplate.net/getting_started.html) has
instructions on how to use all the features of this package.
Furthermore, each directory in the Telethon Kids Institute default
template has a `README.md` file that briefly describes its intended
purpose.

To load you need to run the following two lines of R code:

    library('ProjectTemplate')
    load.project()

After you enter the second line of code, you’ll see a series of
automated messages as ProjectTemplate goes about doing its work. This
work involves:

  - Reading in the global configuration file contained in `config`.
  - Reading in any datasets stored in `data` or `cache`.
  - Preprocessing your data using the files in the `munge` directory.

Once that’s done, you can execute any code you’d like. For every
analysis you create, we’d recommend putting a separate file in the `R`
directory. If the files start with the two lines mentioned above:

    library('ProjectTemplate')
    load.project()

You’ll have access to all of your data, already fully preprocessed, and
all of the libraries you want to use.

For more details about ProjectTemplate, see
<http://projecttemplate.net>.
