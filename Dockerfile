FROM redhat/ubi8:latest
LABEL "Creator"="Anoop"
LABEL "Project"="first"
ENV DEBIAN_FOREGROUND=noninteractive
RUN yum update -y
RUN yum install -y git
RUN yum install -y httpd
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/httpd
ADD anoop.tar.gz /var/www/html
