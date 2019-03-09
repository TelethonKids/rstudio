FROM rocker/tidyverse:3.5.2

MAINTAINER Paul Stevenson "paul.stevenson@telethonkids.org.au"

COPY projects /home/rstudio/projects

RUN chown -R rstudio:rstudio /home/rstudio/projects

EXPOSE 8787

CMD ["/init"]
