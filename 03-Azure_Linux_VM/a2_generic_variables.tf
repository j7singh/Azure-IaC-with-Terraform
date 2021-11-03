# Organization Divisions
variable "org_division" {
  description = "Business division this Infrastructure belongs too"
  type        = string
  default     = "Marketing"
}

# Environment Variables
variable "environment" {
  description = "Used as Prefix"
  type        = string
  default     = "dev"
}

#Azure Resource Group Name
variable "resource_group_name" {
  description = "Resouce Group Name"
  type        = string
  default     = "rg-default"
}

#Azure Resources Location
variable "resource_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "Canada Central"
}
