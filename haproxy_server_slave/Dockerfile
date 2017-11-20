FROM centos:latest
MAINTAINER mariemsbouiii40@gmail.com
RUN yum -y install haproxy \
    && yum -y install keepalived \
    && rm -rf /var/lib/apt/lists/*
# # let the kernel know that we intend to bind additional IP addresses that won’t be defined in the interfaces file(the virtual ip used by keepalived),see https://sebest.github.io/post/linux-how-to-bind-ip-that-doesn-t-exist-yet/ for more details 
RUN echo 'net.ipv4.ip_nonlocal_bind=1' > /etc/sysctl.conf \
    && sysctl -p net.ipv4.ip_nonlocal_bind = 1
# configure haproxy
WORKDIR /etc/haproxy
COPY ./files/haproxy.cfg
RUN chmod 0644 /etc/haproxy.cfg
# Add keepalived config for haproxy
WORKDIR /etc/keepalived/keepalived.conf
COPY ./files/keepalived/keepalived.conf
RUN chmod 0644  /etc/keepalived/keepalived.conf
RUN systemctl daemon-reload \
    && systemctl enable keepalived \
    && systemctl enable haproxy \
    && sytemctl restart keepalived \
    && systemctl restart haproxy \
EXPOSE 80 443

