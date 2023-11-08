# Cappoocha_infra
Cappoocha Infra repository

HW #4

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

HW #3

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
