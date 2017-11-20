# Fix rights for files
chmod 700 /home/git/.ssh
chmod 600 /home/git/.ssh/authorized_keys
#change the /home/git directory owner
chown -R git:git /home/git
#create the host key if it's not already created
HOSTKEY=/etc/ssh/ssh_host_ed25519_key
if [ ! -f "${HOSTKEY}" ]; then
  ssh-keygen -A
fi
cat /etc/ssh/ssh_host_ed25519_key > /home/git/.ssh/authorized_keys
# Launching sshd 
# -D flag avoids executing sshd as a daemon in order to avoid accepting connections in background
/usr/sbin/sshd -D
