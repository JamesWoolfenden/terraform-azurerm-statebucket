resource "azurerm_resource_group" "terraform" {
  name     = var.resource_group_name
  location = var.location

  tags = var.common_tags
}
