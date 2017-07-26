FROM ansible/ubuntu14.04-ansible:stable
LABEL maintainer "Mariem sbouii mariemsbouiii40@gmail.com"
# For this one we're going to retrieve a prebuilt memcached role from
# ansible-galaxy.  This could be an easy way to evaluate a role or to quickly
# get a service up and running in your infrastructure.
RUN mkdir /roles
RUN mkdir /playbooks
WORKDIR roles
ADD requirements.yml /roles
RUN ansible-galaxy install -r requirements.yml
WORKDIR playbooks
ADD playbook.yml /playbooks
RUN ansible-playbook playbook.yml -c local
RUN apt-get install -yq supervisor
ADD supervisord.conf /etc/supervisor/conf.d/monitored_production_server.conf
# Define default command.
CMD ["bash"]
# And then start up our service
EXPOSE 3000 9090
ENTRYPOINT ["/usr/bin/supervisord", "-p", [3000,9090]]
