variable "location" {
  description = "Azure Region to use"
  default     = "UK South"
}

variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = "map"
}

locals {
  subscriptionid = "${replace(element(split("-",data.azurerm_subscription.current.id),0),"//subscriptions//","")}"
}
