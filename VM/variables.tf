# VM/variables.tf

variable "network_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnet_name" {
  type = string
}

variable "subnet_address_prefixes" {
  type = list(string)
}

variable "network_interface_name" {
  type = string
}

variable "private_ip_address" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
}

variable "rgname"{
  
}

variable "location"{
  
}
variable "network_interface_ids"{
  
}