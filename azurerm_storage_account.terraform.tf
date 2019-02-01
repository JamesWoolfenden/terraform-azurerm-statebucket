resource "azurerm_storage_account" "terraform" {
  name                     = "terraformstate"
  resource_group_name      = "${azurerm_resource_group.terraform.name}"
  location                 = "${var.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  enable_blob_encryption   = true
  tags                     = "${var.common_tags}"
}
