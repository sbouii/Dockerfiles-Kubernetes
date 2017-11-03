# Fix rights for files
chmod 755 /home/git/.ssh
chmod 644 /home/git/.ssh/authorized_keys
#change the /home/git directory owner
chown -R git:git /home/git
# Launching open-ssh server
/usr/sbin/sshd -D
