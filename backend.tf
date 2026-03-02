terraform {
  backend "azurerm" {
    resource_group_name  = "inchara-RG"
    storage_account_name = "inch123"
    container_name       = "container123"
    key                  = "eval3.tfstate"
  }
}