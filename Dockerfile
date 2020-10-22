FROM amazonlinux:latest
ENV container docker
RUN yum update -y \
    && yum install -y passwd systemd \
    && echo root | passwd --stdin root
CMD ["/sbin/init"]