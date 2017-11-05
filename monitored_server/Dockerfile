FROM geerlingguy/docker-ubuntu1404-ansible:latest
LABEL maintainer "Mariem sbouii mariemsbouiii40@gmail.com"
RUN mkdir /files

ADD ./files /files
 
ADD playbook.yml 

RUN ansible-playbook playbook.yml -c local
    && apt-get install -yq supervisor
    && rm -rf /var/lib/apt/lists/*

ADD supervisord.conf /etc/supervisor/conf.d/monitored_production_server.conf

EXPOSE 3000 9090 9100

ENTRYPOINT ["/usr/bin/supervisord"]
