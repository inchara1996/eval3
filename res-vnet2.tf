

resource "azurerm_network_security_group" "nsg2" {
  name                = "inch-nsg2"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_virtual_network" "vnet2" {
  name                = "inch-vnet2"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.15.0.0/16"]


  #   subnet {
  #     name             = "subnet2"
  #     address_prefixes = ["10.15.1.0/16"]
  #     security_group   = azurerm_network_security_group.nsg2.id
  #   }
}