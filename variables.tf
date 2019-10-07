variable "location" {
  type        = string
  description = "Azure Region to use, defaults to UK South"
  default     = "UK South"
}

variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = map
}

variable "account_tier" {
  type        = string
  description = "Defaults to Standard, refer to azurerm provider docs for azurerm_storage_account to see valid values."
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "Defaults to LRS, refer to azurerm provider docs for azurerm_storage_account to see valid values."
  default     = "LRS"
}

variable "resource_group_name" {
  description = "Name of resource group in which to deploy storage account."
  type        = string
  default     = "terraform"
}

locals {
  subscriptionid = replace(element(split("-", data.azurerm_subscription.current.id), 0), "//subscriptions//", "")
}
