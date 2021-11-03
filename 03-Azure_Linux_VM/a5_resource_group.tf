# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "rg-1" {
  name     = "${local.resource_name_prefix}-${var.resource_group_name}-${random_string.random-1.id}"
  location = var.resource_group_location
  tags     = local.common_tags
}

output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.rg-1.name
}