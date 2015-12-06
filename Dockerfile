FROM centos:7
MAINTAINER firemilesxu@gmail.com firemiles

# add dns
RUN echo 'nameserver 8.8.8.8' >> /etc/resolv.conf

# add package
RUN \
 yum install -y epel-release && \
 yum install -y openssl-devel python-pip python-devel libffi-devel gcc && \
 yum clean all

# update pip and install security package
RUN \ 
 pip install --no-cache-dir --upgrade pip && \
 pip install --no-cache-dir requests[security];
