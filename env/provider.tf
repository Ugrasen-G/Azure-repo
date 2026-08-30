terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.76.0"
    }
  }
#   backend "azurerm" {
#     resource_group_name  = "Kp1"
#     storage_account_name = "krishn2026"
#     container_name       = "container1"
#     key                  = "tfstate"
#   }
}

provider "azurerm" {
  features {}
}