# Creating a resource group in Canada Central
resource "azurerm_resource_group" "rg1_central" {
  name     = "rg1_central"
  location = "Canada Central"
}

# Create a resource group in Canada East
resource "azurerm_resource_group" "rg2_eastern" {
  name     = "rg2_eastern"
  location = "Canada East"
  provider = azurerm.canada_east
  }