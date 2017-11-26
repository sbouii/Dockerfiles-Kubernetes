FROM centos:latest
LABEL maintainer "Mariem sbouii mariemsbouiii40@gmail.com"
RUN  yum -y update && \
     yum clean all && \
     yum -y install \
     python-yaml \
     python-jinja2 \
     python-httplib2 \
     python-keyczar \
     python-paramiko \
     python-setuptools \
     python-pkg-resources \
     git \
     python-pip && \
     yum clean all
RUN mkdir /etc/ansible/ && \
    echo '[local]\nlocalhost\n' > /etc/ansible/hosts
RUN mkdir /opt/ansible/ && \
    git clone http://github.com/ansible/ansible.git /opt/ansible/ansible
WORKDIR /opt/ansible/ansible
#pull ansible submodules latest commits
RUN git submodule update --init
ENV ANSIBLE_LIBRARY /opt/ansible/ansible/library
ENV PYTHONPATH /opt/ansible/ansible/lib
ENV PATH /opt/ansible/ansible/bin:/bin:/usr/bin:/sbin:/usr/sbin

RUN mkdir /files

ADD ./files /files
 
ADD ./playbook.yml /playbook.yml

RUN ansible-playbook /playbook.yml -c local
    && yum install supervisor
    && rm -rf /var/lib/apt/lists/*

ADD supervisord.conf /etc/supervisor/conf.d/monitored_production_server.conf

EXPOSE 3000 9090 9100

ENTRYPOINT ["/usr/bin/supervisord"]
