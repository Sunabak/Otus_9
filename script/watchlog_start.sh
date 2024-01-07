#!/bin/bash

yum install -y mc wget vim
cp /vagrant/enter/watchlog /etc/sysconfig/
cp /vagrant/enter/watchlog.log /var/log/
cp /vagrant/script/watchlog.sh /opt/
chmod +x /opt/watchlog.sh
cp /vagrant/enter/watchlog.service /etc/systemd/system/
cp /vagrant/enter/watchlog.timer /etc/systemd/system/
systemctl daemon-reload
systemctl enable watchlog.service
systemctl enable watchlog.timer
systemctl start watchlog.service
systemctl start watchlog.timer
