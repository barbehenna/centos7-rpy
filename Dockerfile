FROM prairielearn/centos7-python

RUN yum install -y R readline-devel

RUN pip3.6 install rpy2 tzlocal