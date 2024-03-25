

# VM/outputs.tf

output "network_name" {
  value = var.network_name
}

output "address_space" {
  value = var.address_space
}

output "subnet_name" {
  value = var.subnet_name
}

output "subnet_address_prefixes" {
  value = var.subnet_address_prefixes
}

output "network_interface_name" {
  value = var.network_interface_name
}

output "private_ip_address" {
  value = var.private_ip_address
}

output "vm_name" {
  value = var.vm_name
}

output "vm_size" {
  value = var.vm_size
}

output "admin_username" {
  value = var.admin_username
}

output "admin_password" {
  value = var.admin_password
}