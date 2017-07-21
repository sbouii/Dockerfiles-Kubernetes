FROM ansible/ubuntu14.04-ansible:stable
LABEL maintainer "Mariem sbouii mariemsbouiii40@gmail.com"
RUN mkdir /roles
RUN mkdir /playbooks
ADD requirements.yml /roles
ADD playbook.yml /playbooks
WORKDIR roles
RUN ansible-galaxy install - requirements.yml
WORKDIR playbooks
RUN ansible-playbook playbook.yml -c local
EXPOSE 

