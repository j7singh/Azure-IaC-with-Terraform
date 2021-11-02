# Virtual Network Outputs
## Virtual Network Name
output "virtual_network_name" {
  description = "Virtual Network Name"
  value       = azurerm_virtual_network.vnet.name
}
## Virtual Network ID
output "virtual_network_id" {
  description = "Virtual Network ID"
  value       = azurerm_virtual_network.vnet.id
}


# Subnet Outputs
## Webtier Subnet Name
output "web_subnet_name" {
  description = "Webtier Subnet Name"
  value       = azurerm_subnet.websubnet.name
}

## Webtier Subent ID
output "web_subnet_id" {
  description = "Webtier Subnet ID"
  value       = azurerm_subnet.websubnet.id
}

## Apptier Subnet Name
output "app_subent_name" {
  description = "Apptier Subnet Name"
  value       = azurerm_network_security_group.app_subnet_nsg.name
}

## Apptier Subnet ID
output "app_subnet_id" {
  description = "Apptier Subnet ID"
  value       = azurerm_network_security_group.app_subnet_nsg.id
}
# Network Security Outputs
## Web Subnet NSG Name
output "web_subent_nsg_name" {
  description = "Webtier Subnet NSG Name"
  value       = azurerm_network_security_group.web_subnet_nsg.name
}

## Web Subnet NSG ID
output "web_subnet_nsg_id" {
  description = "Webtier Subnet NSG ID"
  value       = azurerm_network_security_group.web_subnet_nsg.id
}

## App Subnet NSG Name
output "app_subnet_nsg_name" {
  description = "Apptier Subent NSG Name"
  value       = azurerm_network_security_group.app_subnet_nsg.name
}

## App Subnet NSG ID
output "app_subnet_nsg_id" {
  description = "Apptier Subnet NSG ID"
  value       = azurerm_network_security_group.app_subnet_nsg.id
}