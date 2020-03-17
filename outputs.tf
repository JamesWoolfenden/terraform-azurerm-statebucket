output "subscription_id" {
  value = local.subscriptionid
}

output "resource_group" {
  value = azurerm_resource_group.terraform
}

output "storage_account" {
  value = azurerm_storage_account.terraform
}

output "storage_container" {
  value = azurerm_storage_container.terraform
}
