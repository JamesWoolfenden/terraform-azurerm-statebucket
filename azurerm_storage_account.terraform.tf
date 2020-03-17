resource "azurerm_storage_account" "terraform" {
  name                     = "terraform${local.subscriptionid}"
  resource_group_name      = azurerm_resource_group.terraform.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  #enable_blob_encryption    = true
  enable_https_traffic_only = var.enable_https_traffic_only
  tags                      = var.common_tags
}

variable "enable_https_traffic_only" {
  type        = string
  description = "Set traffic to be encrypted"
  default     = true
}
