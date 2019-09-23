# ustmish_infra
ustmish Infra repository

bastion_IP = 35.210.32.82
someinternalhost_IP = 10.132.0.3

Host bastion
Hostname 35.210.32.82
User ustmish

Host someinternalhost
ProxyCommand ssh bastion nc 10.132.0.3 22
