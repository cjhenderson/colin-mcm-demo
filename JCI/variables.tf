#####################################################################
##
##      Created 8/31/21 by ucdpadmin for cloud HCIELNA Azure. for JCI
##
#####################################################################

variable "TestVM_name" {
  type = "string"
  description = "Generated"
}

variable "vm_location" {
  type = "string"
  description = "Generated"
}

variable "vm_size" {
  type = "string"
  description = "Generated"
}

variable "TestVM_azure_user" {
  type = "string"
  description = "Generated"
}

variable "TestVM_azure_user_password" {
  type = "string"
  description = "Generated"
}

variable "TestVM_publisher" {
  type = string
  default = "Canonical"
}

variable "TestVM_offer" {
  type = string
  default = "UbuntuServer"
}

variable "TestVM_sku" {
  type = string
  default = "16.04-LTS"
}

variable "TestVM_version" {
  type = string
  default = "latest"
}

variable "TestVM_os_disk_name" {
  type = string
  description = "Specifies the disk name."
  default ="TestVM_osdiskname"
}

variable "TestVM_os_disk_caching" {
  type = string
  description = "The type of caching which should be used for the internal OS disk. Possible values are None, ReadOnly and ReadWrite."
  default="ReadWrite"
}

variable "TestVM_os_disk_storage_account_type" {
  type = string
  description = "The type of storage account which should back this the internal OS disk. Possible values are Standard_LRS, StandardSSD_LRS and Premium_LRS."
  default = "Standard_LRS"
}

variable "location" {
  type = "string"
  description = "Generated"
}

