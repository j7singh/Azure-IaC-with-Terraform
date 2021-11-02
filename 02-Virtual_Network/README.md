# Azure Virtual Network Design
- These configuration files will create 4-Tier Azure Virtual Network 
1. Azure Virtual Network
2. WebTier Subnet + WebTier Network Security Group (Ports 80, 443)
3. AppTier Subnet + AppTier Network Security Group (Ports 8080, 80, 443)
4. DBTier Subnet + DBTier Network Security Group  (Ports 3306, 1433, 5432, 27017)
5. Bastion Subnet + Bastion Network Security Group (Ports 80, 3389)

# Azure Resources Created
1. azurerm_virtual_network
3. azurermazurerm_resource_group
2. azu_subnet
4. azurerm_network_security_group
5. azurerm_subnet_network_security_group_association
6. azurerm_network_security_rule