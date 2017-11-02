FROM debian:jessie 
LABEL maintainer "Mariem sbouii mariemsbouiii40@gmail.com"
RUN apt-get update \
    && apt-get install -y \
    openssh-server \
    git \   
    && sed -i "s/#PasswordAuthentication yes/PasswordAuthentication no/" /etc/ssh/sshd_config \
    && sed -i "s/#PubkeyAuthentication yes/PubkeyAuthentication yes/" /etc/ssh/sshd_config \
    && addgroup git \
# -D flag avoids password generation 
# -s flag changes user's shell
    && adduser -D -s /usr/bin/git-shell \
    && mkdir -p /home/git/.ssh \    
    && rm -rf /var/lib/apt/lists/*
ENV HOME /home/git
WORKDIR $HOME
COPY ./start.sh 
EXPOSE 22
CMD ["/start.sh"]
