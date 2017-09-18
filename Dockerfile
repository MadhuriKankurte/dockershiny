FROM openanalytics/r-base
MAINTAINER Madhuri 


# system library dependency for the euler app
# RUN apt-get update && apt-get install -y \
#    libstxxl1-dev

# basic shiny functionality
RUN R -e "install.packages(c('shiny', 'rmarkdown'), repos='https://cloud.r-project.org/')"

# install dependencies of the euler app
RUN R -e "install.packages('datasets', repos='https://cloud.r-project.org/')"

# copy the app to the image
RUN mkdir /root/interest_demo
COPY interestdemo /root/interest_demo

COPY Rprofile.site /usr/lib/R/etc/

EXPOSE 3838

CMD ["R", "-e shiny::runApp('/root/interest_demo')"]