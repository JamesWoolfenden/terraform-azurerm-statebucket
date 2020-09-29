resource "azurerm_storage_account" "terraform" {
  #checkov:skip=CKV_AZURE_35: "Ensure default network access rule for Storage Accounts is set to deny"
  name                      = "terraform${local.subscriptionid}"
  resource_group_name       = azurerm_resource_group.terraform.name
  location                  = var.location
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
  enable_https_traffic_only = var.enable_https_traffic_only
  min_tls_version           = "TLS1_2"

  queue_properties {
    logging {
      delete  = enabled
      read    = enabled
      version = 2
      write   = enabled
    }
  }
  tags = var.common_tags
}
