FROM centos:7
RUN yum install  -y zlib python36 epel-release python36-devel httpd \
&& yum groupinstall -y "Development tools"
RUN pip3 install keras numpy pandas pillow  tensorflow secure-smtplib
RUN httpd
