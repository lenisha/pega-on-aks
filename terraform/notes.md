REGION=CANADACENTRAL
STORAGEACCOUNTNAME=tfstatepega
CONTAINERNAME=tfstate
TFSTATE_RG=rg-pega-hub

./create-storage-account

- import aad groups
terraform init -backend-config="resource_group_name=$TFSTATE_RG"    -backend-config="storage_account_name=$STORAGEACCOUNTNAME" -backend-config="container_name=$CONTAINERNAME"  -backend-config="access_key=$ACCESSKEY" -var-file=../../env/test/envvars.tfvars

terraform plan -var-file=../../../env/test/envvars.tfvars