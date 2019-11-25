FROM rocker/r-ver:3.5.2

LABEL maintainer="Rad Suchecki <rad.suchecki@csiro.au>"
SHELL ["/bin/bash", "-c"]

RUN apt-get -qq update \
  && apt-get -qq -y install --no-install-recommends pandoc pandoc-citeproc texlive texlive-latex-extra procps wget xzdec \
  && apt-get -qq -y autoremove \
  && apt-get autoclean \
  && rm -rf /var/lib/apt/lists/* /var/log/dpkg.log

RUN install2.r bookdown rticles rmarkdown dplyr readr ggplot2 viridis ggrepel purrr tidyr gplot RColorBrewer reshape2 jsonlite