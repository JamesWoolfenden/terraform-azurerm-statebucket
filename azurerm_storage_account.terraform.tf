resource "azurerm_storage_account" "terraform" {
  name                     = "terraform${element(split("-", "ee53c671-d145-4a84-a694-e80ef1f6edd1"),0)}"
  resource_group_name      = "${azurerm_resource_group.terraform.name}"
  location                 = "${var.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  enable_blob_encryption   = true
  tags                     = "${var.common_tags}"
}
