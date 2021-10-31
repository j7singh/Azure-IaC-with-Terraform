# Multiple Provider Configuration
Creating two resource groups in default and non-default provider

## Defining two regions in the provider configuration
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

