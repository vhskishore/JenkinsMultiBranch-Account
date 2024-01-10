# JenkinsMultiBranch-Account

Tools:
- Java JDK-17 (Done)
- Docker (Done)
- Terraform (Done)
- Packer (Done)
- Ansible 
- Maven (Done)
- AWS CLI (Done)
- Jenkins
- net-tools (Done)
- jq (Done)
- unzip (Done)

Jenkins Plugins:
- AWS Steps
- BlueOcean

Two Pipelines:
1. Infrastructure Pipeline - Packer, Terraform, Ansible to build Docker Swarm 3-Node Cluster.
2. CICD Pipeline. (SpringPetClinic) Build Java Application with Maven and then copy artifact to Jfrog and create a Docker Image using Dockerfile and Deploy it to Docker Swarm.