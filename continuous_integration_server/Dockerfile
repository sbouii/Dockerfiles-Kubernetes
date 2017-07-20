FROM debian:sid
LABEL maintainer "Mariem sbouii mariemsbouiii40@gmail.com"
RUN apt-get update && apt-get install -y \
        python3-pip \
        build-essential \
        libssl-dev \
        libffi-dev \
        python-dev \
        git-core        
    && rm -rf /var/lib/apt/lists/* \
    && pip install ansible==2.0.0.2 \
COPY requirements.yml /tmp/
RUN ansible-galaxy install -r /tmp/requirements.yml
COPY docker-inventory.ini /etc/ansible/hosts
COPY playbook.yml /tmp/
RUN ansible-playbook /tmp/playbook.yml
EXPOSE 8081
