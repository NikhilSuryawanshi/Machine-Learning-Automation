FROM centos:7
RUN yum install -y python36 epel-release python36-devel httpd \
&& yum groupinstall -y "Development tools"
RUN pip3 install keras numpy pandas pillow opencv-python tensorflow secure-smtplib
RUN httpd
