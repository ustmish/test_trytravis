#echo Download terraform:
#curl https://releases.hashicorp.com/terraform/0.12.13/terraform_0.12.13_linux_amd64.zip -o /tmp/terraform_0.12.13_linux_amd64.zip
#echo unzip terraform:
#unzip /tmp/terraform_0.12.13_linux_amd64.zip -o 
#cp terraform /usr/bin

#echo Download packer
#curl https://releases.hashicorp.com/packer/1.4.5/packer_1.4.5_linux_amd64.zip -o /tmp/packer_1.4.5_linux_amd64.zip

#echo unzip packer
#unzip /tmp/packer_1.4.5_linux_amd64.zip -d /usr/bin

#echo install ansible-lint
#pip install ansible-lint

#echo Download tflint
#$ curl -L "$(curl -s https://api.github.com/repos/terraform-linters/tflint/releases/latest | grep -o -E "https://.+?_linux_amd64.zip")" > tflint.zip && unzip tflint.zip && rm tflint.zip

#cp tflint /usr/bin

#echo packer checking
#cd packer
#packer validate -var-file=./variables.json app.json
#packer validate -var-file=./variables.json db.json

echo terraform checking123
pwd
cd terraform
pwd
terraform validate

#tflint

#echo anible-lint checking
#cd ../ansible/playbooks/
#ansible-lint *
