
output "vnet_name" {
  description = "Output the name of the virtual network"
  value       = var.network_name
}

output "subnet_name" {
  description = "Output the name of the subnet"
  value       = var.subnet_name
}

output "subnet_address_prefixes" {
  description = "Output the address prefixes for the subnet"
  value       = var.subnet_address_prefixes
}

output "network_interface_name" {
  description = "Output the name of the network interface"
  value       = var.network_interface_name
}

output "private_ip_address" {
  description = "Output the private IP address for the network interface"
  value       = var.private_ip_address
}
output "network_interface_ids" {
  value = azurerm_network_interface.demo.id
}