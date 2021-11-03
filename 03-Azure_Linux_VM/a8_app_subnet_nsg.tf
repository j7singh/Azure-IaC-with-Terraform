# Resource-1: Create Apptier subnet
resource "azurerm_subnet" "appsubnet" {
  name                 = "${azurerm_virtual_network.vnet.name}-${var.app_subnet_name}"
  resource_group_name  = azurerm_resource_group.rg-1.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.app_subnet_address
}

# Resource-2: Create Network Security Group (NSG)
resource "azurerm_network_security_group" "app_subnet_nsg" {
  name                = "${azurerm_subnet.appsubnet.name}-nsg"
  location            = azurerm_resource_group.rg-1.location
  resource_group_name = azurerm_resource_group.rg-1.name
}

# Resource-3: Create NSG and Subnet association
resource "azurerm_subnet_network_security_group_association" "app_subnet_nsg_associate" {
  depends_on                = [azurerm_network_security_rule.app_nsg_rule_inbound]
  subnet_id                 = azurerm_subnet.appsubnet.id
  network_security_group_id = azurerm_network_security_group.app_subnet_nsg.id
}

# Resource-4: Create NSG Rules
locals {
  app_inbound_ports_map = {
    "100" : "22", # Use ":" if key starts with number
    "110" : "80",
    "120" : "443",
    "130" : "8080"
  }
}
# Inbound rules for Apptier Subnet
resource "azurerm_network_security_rule" "app_nsg_rule_inbound" {
  for_each                    = local.app_inbound_ports_map
  name                        = "Rule-Port-${each.value} "
  priority                    = each.key
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = each.value
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg-1.name
  network_security_group_name = azurerm_network_security_group.app_subnet_nsg.name
}