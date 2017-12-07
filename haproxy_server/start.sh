chmod 0644 /etc/haproxy.cfg
chmod 0644  /etc/keepalived/keepalived.conf
systemctl daemon-reload 
systemctl enable keepalived 
systemctl enable haproxy 
sytemctl restart keepalived 
systemctl restart haproxy 

