FROM prairielearn/centos7-python

RUN yum install -y R readline-devel libxml2-devel openssl-devel libcurl-devel libssh2-devel libgit2-devel

RUN pip3.6 install rpy2==2.8.4 tzlocal pandas numpy

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

RUN R -e "install.packages(c('data.table', 'tidyverse', 'doParallel', 'foreach', 'future', 'future.apply', 'rbenchmark', 'microbenchmark', 'memoise', 'shiny', 'flexdashboard', 'dygraphs', 'lattice', 'devtools', 'RUnit', 'testthat', 'rcmdcheck'), repos='https://cran.us.r-project.org')"
