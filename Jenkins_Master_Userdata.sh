#!/bin/bash
sudo apt update && apt install -y openjdk-17-jdk unzip net-tools jq maven awscli
# sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
# sudo unzip awscliv2.zip
# sudo sudo ./aws/install
sudo curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
sudo curl https://get.docker.com | bash
sudo usermod -a -G docker ubuntu
sudo usermod -a -G root ubuntu
sudo systemctl daemon-reload
sudo systemctl restart docker
sudo wget https://releases.hashicorp.com/terraform/1.6.5/terraform_1.6.5_linux_amd64.zip
sudo unzip terraform_1.6.5_linux_amd64.zip
sudo rm -rf terraform_1.6.5_linux_amd64.zip
sudo wget https://releases.hashicorp.com/packer/1.10.0/packer_1.10.0_linux_amd64.zip
sudo unzip packer_1.10.0_linux_amd64.zip
sudo rm -rf packer_1.10.0_linux_amd64.zip
sudo chmod 777 packer terraform
sudo mv terraform packer /usr/local/bin/
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo dnf upgrade
# Add required dependencies for the jenkins package
sudo dnf install fontconfig java-17-openjdk
sudo dnf install jenkins
sudo systemctl daemon-reload