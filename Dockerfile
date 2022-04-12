FROM rocker/rstudio:4.1.2
LABEL maintainer="chasingmicrobes@gmail.com"

# System packages
RUN apt-get update -qq && apt-get -y --no-install-recommends install \
libxml2-dev \
libcairo2-dev \
libsqlite-dev \
libpq-dev \
libicu-dev \
libbz2-dev \
liblzma-dev \
libfontconfig1-dev \
libssl-dev \
libcurl4-openssl-dev \
libnetcdf-dev \
udunits-bin \
libudunits2-dev \
libxt6 \
texlive-latex-base \
texlive-latex-recommended \
texlive-fonts-recommended \
texlive-fonts-extra \
curl

# R packages
ENV R_PACKAGES='c("rmarkdown","vitae", "data.table", "glue", "lubridate", "dplyr", "jsonlite", "rorcid", "here", "tinytex")'
RUN echo 'options("repos"="https://mran.microsoft.com/snapshot/2022-03-02")' >> /usr/local/lib/R/etc/Rprofile.site
RUN Rscript -e "install.packages(${R_PACKAGES}, Ncpus=parallel::detectCores())"
RUN Rscript -e "update.packages(ask = FALSE, checkBuilt = TRUE)"
RUN Rscript -e "tinytex::tlmgr_update()"
