FROM geerlingguy/docker-ubuntu1404-ansible:latest
LABEL maintainer "Mariem sbouii mariemsbouiii40@gmail.com"
# For this one we're going to retrieve a prebuilt memcached role from
# ansible-galaxy.  This could be an easy way to evaluate a role or to quickly
# get a service up and running in your infrastructure.
RUN mkdir /ansible-roles

WORKDIR /ansible-roles

ADD playbook.yml /ansible-roles

ADD requirements.yml /ansible-roles

RUN ansible-galaxy install -r requirements.yml
    && ansible-playbook playbook.yml -c local
    && apt-get install -yq supervisor
    && rm -rf /var/lib/apt/lists/*

ADD supervisord.conf /etc/supervisor/conf.d/monitored_production_server.conf

EXPOSE 3000 9090 9100

ENTRYPOINT ["/usr/bin/supervisord"]
