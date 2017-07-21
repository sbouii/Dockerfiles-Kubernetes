FROM ansible/ubuntu14.04-ansible:stable
LABEL maintainer "Mariem sbouii mariemsbouiii40@gmail.com"
RUN mkdir /roles
RUN mkdir /playbooks
WORKDIR roles
ADD requirements.yml /roles
RUN ansible-galaxy install -r requirements.yml
WORKDIR playbooks
ADD playbook.yml /playbooks
RUN ansible-playbook playbook.yml -c local
EXPOSE 8081

