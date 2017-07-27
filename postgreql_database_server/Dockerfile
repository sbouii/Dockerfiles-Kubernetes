FROM ansible/ubuntu14.04-ansible:stable
LABEL maintainer "Mariem sbouii mariemsbouiii40@gmail.com"
RUN mkdir /roles
RUN mkdir /playbooks
ADD requirements.yml /roles
ADD playbook.yml /playbooks
WORKDIR roles
# For this one we're going to retrieve a prebuilt memcached role from
# ansible-galaxy.  This could be an easy way to evaluate a role or to quickly
# get a service up and running in your infrastructure.
RUN ansible-galaxy install - requirements.yml
WORKDIR playbooks
RUN ansible-playbook playbook.yml -c local
# And then start up our service
EXPOSE 5432 
ENTRYPOINT []
