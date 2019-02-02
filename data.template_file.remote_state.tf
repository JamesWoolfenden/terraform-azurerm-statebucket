data "template_file" "remote_state" {
  template = "${file("${path.module}/remote_state.tf.template")}"

  vars {
    storage_account_name = "terraform${local.subscriptionid}"
    resource_group_name  = "${azurerm_resource_group.terraform.name}"
  }
}

data "azurerm_subscription" "current" {}
