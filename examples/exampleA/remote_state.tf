terraform {
  backend "azurerm" {
    resource_group_name  = "terraform"
    storage_account_name = "terraformee53c671"
    container_name       = "tfstate"
    key                  = "state-bucket\terraform.tfstate"
  }
}
