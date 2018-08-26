FROM centos:centos7
MAINTAINER The CentOS Project <cloud-ops@centos.org>

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install nodejs npm; yum clean all
RUN yum -y install wget; yum clean all
RUN yum -y install unzip; yum clean all
RUN yum -y install libsodium; yum clean all
RUN yum -y install libcap; yum clean all
RUN yum -y install libcap-dev; yum clean all
RUN yum -y install unzip; yum clean all

EXPOSE 8080/tcp

ADD start.sh /start.sh
RUN chmod 755 /start.sh

CMD ["sh", "-c", "/start.sh"]
