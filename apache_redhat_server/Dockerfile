 FROM ansible/centos7-ansible:stable
 LABEL maintainer "Mariem sbouii mariemsbouiii40@gmail.com"
 #retrieve a prebuilt role from ansible-galaxy
 #This could be an easy way to evaluate a role or to quickly
 # get a service up and running in your infrastructure.
 RUN mkdir /ansible-roles
 RUN mkdir /ansible-roles/vars
 ADD main.yml /ansible-roles/vars
 WORKDIR /ansible-roles
 ADD requirements.yml playbook.yml /ansible-roles
 RUN ansible-galaxy install -r requirements.yml
 RUN ansible-playbook playbook.yml -c local
 RUN rm -rf /var/lib/apt/lists/*
 EXPOSE 8080
 ENTRYPOINT [""]
