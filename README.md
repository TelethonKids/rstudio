RStudio
================

A containerized RStudio instance from the rocker base image:

    rocker/tidyverse:3.5.2

This container comes with a `nginx` reverse proxy (access via. port 80)
and the Tidyverse collection of packages pre-installed by default.

By default, the running container will be secured with SSL encryption via.
Certbot. Some configuration will be required for the container to start, see
below; however, instructions are provided in `nginx.conf` to remove this security.

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

[These instructions](https://medium.com/@pentacent/nginx-and-lets-encrypt-with-docker-in-less-than-5-minutes-b4b8a60d3a71)
were used to set up a secure HTTPS connection to RStuido with Certbot SSL
certificates. Also see [here](https://github.com/wmnnd/nginx-certbot).

This will not work out of the box, the NGINX configuration file will need to be
updated with your domain name (which is required) at the indicated places in
`nginx.conf`. `init-letsencrypt.sh` also needs to be configured with your domain
names(s) and email address.

The following commands will need to be run on the host machine in order to obtain
the first valid certificates: first run `chmod +x init-letsencrypt.sh` then
`sudo ./init-letsencrypt.sh`.

If HTTPS security is not wanted then you will need to remove the indicated chunks
of code in `nginx.conf`.
