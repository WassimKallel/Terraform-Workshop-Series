terraform {
  required_version = "~>1.3.4"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.31.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~>4.0.4"
    }
  }
  backend "azurerm" {
    resource_group_name  = "1-2da4545f-playground-sandbox"
    storage_account_name = "gl5"
    container_name       = "infra-state"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
}
