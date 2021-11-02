# Defining Local Values
locals {
  owner       = var.org_division
  environment = var.environment

  resource_name_prefix = "${var.org_division}-${var.environment}"

  common_tags = {
    owners      = local.owner
    environment = local.environment
  }
}