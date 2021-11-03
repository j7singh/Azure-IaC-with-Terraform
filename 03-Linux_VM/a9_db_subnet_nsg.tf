# Resource-1: Create DBtier subnet
resource "azurerm_subnet" "dbsubnet" {
  name                 = "${azurerm_virtual_network.vnet.name}-${var.db_subnet_name}"
  resource_group_name  = azurerm_resource_group.rg-1.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.db_subnet_address
}

# Resource-2: Create Network Security Group (NSG)
resource "azurerm_network_security_group" "db_subnet_nsg" {
  name                = "${azurerm_subnet.dbsubnet.name}-nsg"
  location            = azurerm_resource_group.rg-1.location
  resource_group_name = azurerm_resource_group.rg-1.name
}

# Resource-3: NSG and Subnet association
resource "azurerm_subnet_network_security_group_association" "db_subnet_nsg_associate" {
  depends_on                = [azurerm_network_security_rule.db_nsg_rule_inbound]
  subnet_id                 = azurerm_subnet.dbsubnet.id
  network_security_group_id = azurerm_network_security_group.db_subnet_nsg.id
}

# Resource-4: Create NSG Rules
locals {
  db_inbound_ports_map = {
    "100" : "1433", # Use ":" if key starts with number
    "110" : "3306",
    "120" : "5432",
    "130" : "27017"
  }
}
# Inbound rules for DBtier Subnet
resource "azurerm_network_security_rule" "db_nsg_rule_inbound" {
  for_each                    = local.db_inbound_ports_map
  name                        = "Rule-Port-${each.value} "
  priority                    = each.key
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = each.value
  source_address_prefix       = "*" # change according to usecase
  destination_address_prefix  = "*" # change according to usecase
  resource_group_name         = azurerm_resource_group.rg-1.name
  network_security_group_name = azurerm_network_security_group.db_subnet_nsg.name
}