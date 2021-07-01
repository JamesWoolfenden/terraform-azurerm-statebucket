resource "azurerm_storage_container" "terraform" {
  # checkov:skip=CKV2_AZURE_21: ADD REASON
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.terraform.name
  container_access_type = "private"
}
