# Creating Virtual Network, Subnets and Subnet NSG's

# Virtual Network

variable "vnet_name" {
  description = "virtual network name"
  type        = string
  default     = "vnet-default"
}

variable "vnet_address_space" {
  description = "virtual network address space"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

# Web Subnet Name
variable "web_subnet_name" {
  description = "virtual network web subnet name"
  type        = string
  default     = "websubnet"
}

# Web Subnet Address Space
variable "web_subnet_address" {
  description = "virtual network web subnet address space"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

# App Subnet Name
variable "app_subnet_name" {
  description = "virtual network app subnet name"
  type        = string
  default     = "appsubnet"
}

# App Subnet Address Space
variable "app_subnet_address" {
  description = "virtual network app subnet address space"
  type        = list(string)
  default     = ["10.0.11.0/24"]
}

# Database Subnet Name
variable "db_subnet_name" {
  description = "virtual network database subnet name"
  type        = string
  default     = "dbsubnet"
}

# Database Subnet Address Space
variable "db_subnet_address" {
  description = "virtual network database subnet address space"
  type        = list(string)
  default     = ["10.0.21.0/24"]
}

# Bastion/Management Subnet Name
variable "bastion_subnet_name" {
  description = "virtual network bastion subnet name"
  type        = string
  default     = "bastionsubnet"
}

# Bastion/Management Subnet Address Space
variable "bastion_subnet_address" {
  description = "virtual network bastion subnet address space"
  type        = list(string)
  default     = ["10.0.100.0/24"]
}