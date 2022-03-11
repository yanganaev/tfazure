provider "azurerm" {
  version = "=2.0.0"
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

resource "azurerm_resource_group" "flxdiploma" {
  name     = "rg-hello-azure"
  location = "northcentralus"
}
