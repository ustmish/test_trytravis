curl https://releases.hashicorp.com/terraform/0.12.13/terraform_0.12.13_linux_amd64.zip -o terraform_0.12.13_linux_amd64.zip
unzip terraform_0.12.13_linux_amd64.zip
cp terraform/ /usr/bin

curl https://releases.hashicorp.com/packer/1.4.5/packer_1.4.5_linux_amd64.zip -o packer_1.4.5_linux_amd64.zip
unzip packer_1.4.5_linux_amd64.zip
cp pakcer /usr/bin

pip install ansible-lint

$ curl -L "$(curl -s https://api.github.com/repos/terraform-linters/tflint/releases/latest | grep -o -E "https://.+?_linux_amd64.zip")" > tflint.zip && unzip tflint.zip && rm tflint.zip

cp tflint /usr/bin

cd packer
packer validate -var-file=./variables.json app.json
packer validate -var-file=./variables.json db.json

cd ../terraform
terraform validate
tflint

cd ../ansible/playbooks/
ansible-lint *
