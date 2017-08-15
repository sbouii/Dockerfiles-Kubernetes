FROM geerlingguy/docker-ubuntu1404-ansible:latest
LABEL maintainer "Mariem sbouii mariemsbouiii40@gmail.com"
#retrieve a prebuilt role from ansible-galaxy
#This could be an easy way to evaluate a role or to quickly
# get a service up and running in your infrastructure.

RUN mkdir /ansible-roles

WORKDIR /ansible-roles

ADD playbook.yml /ansible-roles

RUN sudo ansible-galaxy install \
              abessifi.java \
              geerlingguy.jenkins \
    && ansible-playbook playbook.yml -c local
    && rm -rf /var/lib/apt/lists/*

EXPOSE 8080
# a default command just to list the installed plugins of the jenkins server, you must add the jenkins credentials --username and --password
# you can make an other default jenkins command line as default command but some of them needs to restart the jenkins server

CMD ["/usr/bin/java", "-jar", "/usr/share/jenkins/jenkins.war", "-s", "http://127.0.0.1:8080", "list-plugins"]
