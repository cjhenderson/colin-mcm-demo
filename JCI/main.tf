#####################################################################
##
##      Created 8/31/21 by ucdpadmin for cloud HCIELNA Azure. for JCI
##
#####################################################################

terraform {
  required_version = "~> 0.12"
}

provider "azurerm" {
  features {}
  version = "~> 2.43"
}


resource "azurerm_linux_virtual_machine" "TestVM" {
  name                = var.TestVM_name
  location            = var.vm_location
  size                = var.vm_size
  admin_username      = var.TestVM_azure_user
  admin_password      = var.TestVM_azure_user_password
  disable_password_authentication = false
  resource_group_name   = azurerm_resource_group.Default-rg.name
  tags = {
    Name = var.TestVM_name
  }
  source_image_reference {
    publisher = var.TestVM_publisher
    offer     = var.TestVM_offer
    sku       = var.TestVM_sku
    version   = var.TestVM_version
  }
  os_disk {
    name                 = var.TestVM_os_disk_name
    caching              = var.TestVM_os_disk_caching
    storage_account_type = var.TestVM_os_disk_storage_account_type
  }
}

resource "azurerm_resource_group" "Default-rg" {
  name     = "Default-rg"
  location = var.location
}