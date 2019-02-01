resource "azurerm_resource_group" "terraform" {
  name     = "terraform"
  location = "${var.location}"

  tags = "${var.common_tags}"
}
