FROM ansible/centos7-ansible:stable
LABEL maintainer "Mariem sbouii mariem.sbouiii40@gmail.com"
   
RUN mkdir /files

ADD ./files /files
 
ADD ./playbook.yml /playbook.yml

RUN ansible-playbook /playbook.yml -c local && \
    yum clean all && \
    yum -y install supervisor

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 3000 9090 9100

ENTRYPOINT ["/usr/bin/supervisord"]
