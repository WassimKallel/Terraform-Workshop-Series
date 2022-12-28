terraform {
  required_version = "~>1.3.4"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.31.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "1-fc0acb22-playground-sandbox"
    container_name       = "backend"
    storage_account_name = "gltfbackend"
    key                  = "first-stack.json"
  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
}
