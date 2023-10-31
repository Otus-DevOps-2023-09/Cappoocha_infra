# Cappoocha_infra
Cappoocha Infra repository

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
