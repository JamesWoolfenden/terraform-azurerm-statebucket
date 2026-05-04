terraform {
  required_providers {
    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.71.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.8.0"
    }
  }
  required_version = ">=1.3.0"
}
