variable "location" {
  type        = string
  description = "Azure Region to use"
  default     = "UK South"
}

variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = map
}

variable "account_tier" {
  type        = string
  description = "Defaulting setting of the account tier"
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "Default stoage setting to Locally Reducndant only"
  default     = "LRS"
}

locals {
  subscriptionid = replace(element(split("-", data.azurerm_subscription.current.id), 0), "//subscriptions//", "")
}

variable "resource_group_name" {
  type    = string
  default = "terraform"
}
