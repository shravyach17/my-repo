#Vnet/main.tf

resource "azurerm_virtual_network" "demo" {
  name                = var.network_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name   = var.rg_name
}

resource "azurerm_subnet" "demo" {
  name                 = var.subnet_name
  resource_group_name   = var.rg_name
  virtual_network_name = azurerm_virtual_network.demo.name
  address_prefixes    = var.subnet_address_prefixes
}
resource "azurerm_network_interface" "demo" {
  name                = var.network_interface_name
  location            = var.location
  resource_group_name   = var.rg_name

  ip_configuration {
    name                          = "internal"
    private_ip_address_allocation = "Static"
    private_ip_address            = var.private_ip_address
   // subnet_id                     = var.subnet_id
  }
}

# Vnet/outputs.tf
