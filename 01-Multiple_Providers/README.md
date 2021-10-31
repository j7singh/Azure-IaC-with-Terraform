# Multiple Provider Configuration
Creating two resource groups in default and non-default provider

## Defining two regions in the provider configuration using alias
```t
# Provider-1 Block Canada_Central (Default Provider)
provider "azurerm" {
  features {}
}

#Provider-2 Block Canada_East(Different Region)
provider "azurerm" {
  features {
    virtual_machine {
      delete_os_disk_on_deletion = false # to prevent deletion of disk on VM termination 
    }
  }
  alias = "canada_east"
}
```
## How to reference non-default provider while creating resources
```t
# Creating a resource group in Canada East
resource "azurerm_resource_group" "rg2_eastern" {
  name     = "rg2_eastern"
  location = "Canada East"
  provider = azurerm.canada_east
  }
  ```

