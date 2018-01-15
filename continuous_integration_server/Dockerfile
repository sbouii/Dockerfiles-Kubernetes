FROM ansible/centos7-ansible:stable

LABEL maintainer "Mariem sbouii mariem.sbouiii40@gmail.com"

ADD ./playbook.yml /playbook.yml

RUN ansible-playbook /playbook.yml -c local && \
    yum clean all && \

EXPOSE 8080
# a default command just to list the installed plugins of the jenkins server, you must add the jenkins credentials --username and --password
# you can make an other default jenkins command line as default command but some of them needs to restart the jenkins server

CMD ["/usr/bin/java", "-jar", "/usr/share/jenkins/jenkins.war", "-s", "http://127.0.0.1:8080", "list-plugins"]
