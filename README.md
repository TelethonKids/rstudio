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

### HTTPS encryption

HTTPS encryption is enabled by default, which will requrie SSL
certificates to be created. SSL certificates can be generated following
these instructions by Let’s Encrypt <https://letsencrypt.org/>

The `*.crt` and `*.key` should be put into the
`nginx/certs/example.com/` directory; change “example.com” to what is
relevant for your site.

If HTTPS encription is not required then modifications can be made to
`nginx.conf` where indicated.
