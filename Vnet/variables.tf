variable "network_name" {
  description = "Name of the virtual network"
}

variable "rg_name" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Azure region for the virtual network"
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
