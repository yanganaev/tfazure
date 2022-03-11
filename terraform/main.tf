provider "azurerm" {
  version = "~>2.0"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "flxdiploma"
    storage_account_name = "tfstateflxdploma"
    container_name       = "terraformflxdiploma"
    key                  = "terraforflxdiploma.tfstate"
  }
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.azure_region

  tags = {
    Owner = "feliks_ianganaev@epam.com"
  }
}