#!/bin/bash

yum install httpd -y
cp /vagrant/enter/httpd@.service /etc/systemd/system/
cp /vagrant/enter/first.conf /etc/httpd/conf/
cp /vagrant/enter/second.conf /etc/httpd/conf/
cp /vagrant/enter/httpd-first /etc/sysconfig/
cp /vagrant/enter/httpd-second /etc/sysconfig/
systemctl enable httpd@first
systemctl enable httpd@second
systemctl start httpd@first
systemctl start httpd@second
