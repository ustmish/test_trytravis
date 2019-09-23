# ustmish_infra
ustmish Infra repository



Host bastion
Hostname 35.210.32.82
User ustmish

Host someinternalhost
ProxyCommand ssh bastion nc 10.132.0.3 22
