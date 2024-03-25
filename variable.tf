# variables.tf

variable "rg_name" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Azure region for the resources"
}

variable "vm_name" {
  description = "Name of the virtual machine"
}

variable "vm_size" {
  description = "Size of the virtual machine"
}

variable "admin_username" {
  description = "Username for the VM admin"
}

variable "admin_password" {
  description = "Password for the VM admin"
}

variable "network_name" {
  description = "Name of the virtual network"
}

variable "address_space" {
  description = "Address space for the virtual network"
}

variable "subnet_name" {
  description = "Name of the subnet"
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet"
}

variable "network_interface_name" {
  description = "Name of the network interface"
  type        = string
}

variable "private_ip_address" {
  description = "Private IP address for the network interface"
  type        = string
}
variable "network_interface_ids"{
  
}