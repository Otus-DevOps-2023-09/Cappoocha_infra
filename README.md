# Cappoocha_infra
Cappoocha Infra repository

# HW #6 Terraform

1. Terraform installed; version: Terraform v1.6.6
2. Configuration file added main.tf where we have describe the infrastructure:
   - Added Provider section for be able managing the YC resourses via API
   - Load provider "yandex": ```terraform init```
   - Added "yandex_compute_instance" resource to run VM via terraform
   - Defined metatdata with public keys inside the resourse
   - Added provisioners into the resourse to deploy the application
   - Defined the attributes for provosioners connection by adding ```connection``` section into the resourse 
3. Before apply the changes we check the plan: ```terraform plan```
4. Then apply the changes: ```terraform apply -auto-approve```
5. Using ```terraform show``` we can check state attributes, such as externl IP: ```terraform show | grep nat_ip_address```
6. Added fiels to store variables to parametirize the config file:
    - variables.tf - Defines the available vars
    - terraform.tfvars - Defines the value for the avaleble vars
7. Added file to store some useful output data, such as external IP
8. To build the application run: 

```
terraform plan
terraform apply
```
9. To format the configuration files into a canonical format and style run ```terraform fmt -recursive``` that will format all the Terraform configuration files in the directory structure


# HW #4

testapp_IP = 158.160.46.225
testapp_port = 9292

Additional task: Startup script CLI
```
yc compute instance create `
--name reddit-app `
--zone ru-central1-a `
--hostname reddit-app `
--memory=2 `
--platform=standard-v3 `
--cores=2 `
--core-fraction 50 `
--create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=8 `
--network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 `
--metadata-from-file user-data=startup-metadata.yaml
```
--------------------------------------------------------------------------------------------

# HW #3

Command to connect to a private server someinternalhost:
ssh -J appuser@158.160.50.173 appuser@10.128.0.25

To make an alias for command like:
ssh someinternalhost
need to update ssh config file with the following:

Host bastion
    HostName 158.160.50.173
    User appuser

Host someinternalhost
    HostName 10.128.0.25
    User appuser
    ProxyJump bastion

YC connect:
bastion_IP = 158.160.50.173
someinternalhost_IP = 10.128.0.25
