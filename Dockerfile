FROM rocker/verse:4.3.1

# R packages

ENV R_PACKAGES='c("rmarkdown","vitae", "data.table", "glue", "lubridate", "dplyr", "jsonlite", "httr2", "here", "tinytex")'
RUN echo 'options("repos"="https://packagemanager.posit.co/cran/__linux__/rhel9/2023-10-03")' >> /usr/local/lib/R/etc/Rprofile.site
RUN Rscript -e "install.packages(${R_PACKAGES}, Ncpus=parallel::detectCores())"
RUN Rscript -e "update.packages(ask = FALSE, checkBuilt = TRUE)"
RUN Rscript -e " tinytex::tlmgr_install()"
#RUN tinytex::tlmgr_install(c("ae", "amsfonts", "atbegshi", "atveryend", "babel", "bibtex", "cm", "context", "dehyph", "dvipdfmx", "etex", "everyshi", "firstaid", "glyphlist", "graphics", "graphics-cfg", "graphics-def", "hyph-utf8", "hyphen-base", "inconsolata", "knuth-lib", "kpathsea", "l3backend", "l3kernel", "l3packages", "latex", "latex-bin", "latex-fonts", "latexconfig", "listings", "lm", "lm-math", "lua-alt-getopt", "lua-uni-algos", "luahbtex", "lualibs", "luaotfload", "luatex", "makeindex", "manfnt-font", "metafont", "metapost", "mflogo-font", "mfware", "modes", "mptopdf", "parskip", "pdfcrop", "pdftex", "plain", "scheme-infraonly", "stmaryrd", "tex", "tex-ini-files", "texlive-scripts", "texlive.infra", "tools", "unicode-data", "url", "xetex", "xetexconfig", "xkeyval","texlive-fontsextra"))




WORKDIR /resume





