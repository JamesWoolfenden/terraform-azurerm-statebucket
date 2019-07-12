resource "azurerm_storage_account" "terraform" {
  name                     = "terraform${local.subscriptionid}"
  resource_group_name      = azurerm_resource_group.terraform.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  enable_blob_encryption   = true
  tags                     = var.common_tags
}
