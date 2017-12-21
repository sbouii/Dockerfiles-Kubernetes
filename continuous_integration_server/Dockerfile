FROM 

RUN 

WORKDIR 

ADD playbook.yml

RUN sudo  \
    && ansible-playbook playbook.yml -c local
    && rm -rf /var/lib/apt/lists/*

EXPOSE 8080
# a default command just to list the installed plugins of the jenkins server, you must add the jenkins credentials --username and --password
# you can make an other default jenkins command line as default command but some of them needs to restart the jenkins server

CMD ["/usr/bin/java", "-jar", "/usr/share/jenkins/jenkins.war", "-s", "http://127.0.0.1:8080", "list-plugins"]
