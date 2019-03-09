RStudio
================

Definition of a containerized RStudio instance from:

    rocker/tidyverse:3.5.2

Container comes with a `nginx` reverse proxy (port 80 access on `localhost`)
and the Tidyverse collection of packages pre-installed by default.

The `home/rstudio/projects`, `/usr/local/lib/R` and `/home/rstudio/.rstudio`
directories are configured as Docker volumes.

The projects directory is pre-configured with a project template (00_next_project)
that is useful for projects that conform to the principles of reproducible research
and "project-as-a-package".

Default username: rstudio
Default password: rstudio1
