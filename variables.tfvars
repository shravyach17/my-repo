# terraform.tfvars

rg_name         = "myResourceGroup"
vm_name         = "myVM"
location        = "West US"
vm_size         = "Standard_DS1_v2"
admin_username  = "shravya"
admin_password  = "shravya"
network_name    = "myVnet"
address_space   = ["10.0.0.0/16"]
subnet_name     = "mySubnet"
subnet_address_prefixes = ["10.0.1.0/24"]
network_interface_name   = "nic1"
private_ip_address       = "10.0.1.5"
