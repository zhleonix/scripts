#!/bin/bash
sudo -s 'apt-get install zip'
sudo -s 'echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf'
sudo -s 'echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf'
sudo -s 'sysctl -p'
sudo -s 'sysctl net.ipv4.tcp_available_congestion_control'
sudo -s 'bash <(curl -L -s https://install.direct/go.sh)' 

