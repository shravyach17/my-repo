# main.tf


module "Resource" {
  source      = "./Resource"
  rg_name     = var.rg_name
  location    = var.location
}

# main.tf

module "VM" {
  source                  = "./VM"
rgname = module.Resource.rg_name
location = module.Resource.location
  network_name            = var.network_name
  address_space           = var.address_space
  subnet_name             = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
  network_interface_name  = var.network_interface_name
  private_ip_address      = var.private_ip_address
  vm_name                 = var.vm_name
  vm_size                 = var.vm_size
  admin_username          = var.admin_username
  admin_password          = var.admin_password
  network_interface_ids = var.network_interface_ids
}

# Other configurations...


module "Vnet" {
  source                 = "./Vnet"
  network_name           = var.network_name
  rg_name                = module.Resource.rg_name
  location               = module.Resource.location
  address_space          = var.address_space
  subnet_name            = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
  network_interface_name = var.network_interface_name
  private_ip_address     = var.private_ip_address
}

/*
module "sample"{
  source = "./infrasetup"
  project_name = var.project_name
}
*/

  