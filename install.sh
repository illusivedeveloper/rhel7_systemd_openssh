#!/bin/bash

#Install wget
yum install wget -y

#Get epel-release and install it
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && yum install epel-release-latest-7.noarch.rpm -y && yum clean all && rm *.rpm

#Install openssh-server, openssh-clients, openssh packages and remove wget and clean yum cache
yum localinstall http://mirror.centos.org/centos/7/os/x86_64/Packages/openssh-server-7.4p1-21.el7.x86_64.rpm -y && yum install openssh-clients openssh -y && yum remove wget -y && yum clean all

