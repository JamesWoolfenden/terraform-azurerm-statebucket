module "statebucket" {
  #source      = "JamesWoolfenden/statebucket/azurerm"
  source      = "../../"
  version     = "0.0.1"
  common_tags = "${var.common_tags}"
}
