resource "azurerm_resource_group" "rg" {
  name     = "inchararg"
  location = "West Europe"
}

resource "azurerm_network_security_group" "nsg1" {
  name                = "inch-nsg1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_virtual_network" "vnet1" {
  name                = "inch-vnet1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.5.0.0/16"]


  # subnet {
  #   name             = "subnet1"
  #   address_prefixes = ["10.5.1.0/16"]
  #   security_group   = azurerm_network_security_group.nsg1.id
  # }
}