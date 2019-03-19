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

### Default login

username: rstudio

Default password: rstudio1

## Docker Ubuntu Server Installation/Set-up

1.  Docker CE for Ubuntu installation:
    <https://docs.docker.com/install/linux/docker-ce/ubuntu/>
2.  Follow post-installation instructions:
    <https://docs.docker.com/install/linux/linux-postinstall/>
    1.  configuring the daemon.json file will not work with Ubuntu 16.04
        (and above), instead add the following to the systemd unit file:
        `ExecStart=/usr/bin/dockerd -H fd:// -H tcp://127.0.0.1:275 -H
        unix:///var/run/docker.sock`
3.  Install docker-compose <https://docs.docker.com/compose/install/>
    (optional):

        sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0-rc1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
        sudo chmod +x /usr/local/bin/docker-compose
        sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

## Docker App Deployment

1.  Change current directory to project folder `cd ...`
2.  Start Docker containers
    3.  `docker-compose up -d`
3.  App is ready on port 80: in browser, go to 192.168.99.100 (windows)
    or 127.17.0.1 (Ubuntu)

## HTTPS encryption

HTTPS encryption is enabled by default, which will requrie SSL
certificates to be created. SSL certificates can be generated following
these instructions by Let’s Encrypt <https://letsencrypt.org/>

The `*.crt` and `*.key` should be put into the
`nginx/certs/example.com/` directory; change “example.com” to what is
relevant for your site.

If HTTPS encription is not required then modifications can be made to
`nginx.conf` where indicated.
