FROM ansible/ubuntu14.04-ansible:stable
LABEL maintainer "Mariem sbouii mariemsbouiii40@gmail.com"
#retrieve a prebuilt role from ansible-galaxy
#This could be an easy way to evaluate a role or to quickly
# get a service up and running in your infrastructure.
RUN mkdir /roles
RUN mkdir /playbooks
WORKDIR roles
ADD requirements.yml /roles
RUN ansible-galaxy install -r requirements.yml
WORKDIR playbooks
ADD playbook.yml /playbooks
RUN ansible-playbook playbook.yml -c local
RUN rm -rf /var/lib/apt/lists/*
VOLUME ["/root/.jenkins"]
EXPOSE 8080
CMD ["/usr/bin/java", "-jar", "/usr/share/jenkins/jenkins.war", "--webroot=/root/.jenkins/web"]
