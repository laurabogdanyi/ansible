#! /bin/bash

sudo apt-get update
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible -y
sudo apt-get install openssh-server -y
#GITHUB

sudo apt-get install git
#WORDPRESS

git clone https://github.com/andreipak/wordpress-ansible.git
cd wordpress-ansible
sudo ansible-playbook playbook.yml -i hosts -e mysql_root_password=#password#
