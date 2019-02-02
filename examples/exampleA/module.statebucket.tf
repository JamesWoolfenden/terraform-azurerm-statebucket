module "statebucket" {
  source      = "JamesWoolfenden/statebucket/azure"
  version     = "0.0.7"
  common_tags = "${var.common_tags}"
}
