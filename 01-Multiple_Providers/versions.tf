# Terraform Block

terraform {
  required_version = ">= 0.15"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.0"
    }
  }
}

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