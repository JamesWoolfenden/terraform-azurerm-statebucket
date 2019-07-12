resource "azurerm_storage_container" "terraform" {
  name                  = "tfstate"
  resource_group_name   = azurerm_resource_group.terraform.name
  storage_account_name  = azurerm_storage_account.terraform.name
  container_access_type = "private"
}
