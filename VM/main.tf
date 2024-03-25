

# VM/main.tf


resource "azurerm_windows_virtual_machine" "demo" {
  name                  = var.vm_name
  resource_group_name   = var.rgname
  location              = var.location
  size                  = var.vm_size
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  network_interface_ids = var.network_interface_ids

  # os_profile {
  #   computer_name  = var.vm_name
  #   admin_username = var.admin_username
  #   admin_password = var.admin_password
  # }

  os_disk {
    name              = "${var.vm_name}-os-disk"
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-datacenter"
    version   = "latest"
  }

  tags = {
    environment = "dev"
  }
}

