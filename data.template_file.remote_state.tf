data "template_file" "remote_state" {
  template = "${file("${path.module}/remote_state.tf.template")}"

  vars {
    storage_account_name = "terraform${element(split("-", "ee53c671-d145-4a84-a694-e80ef1f6edd1"),0)}"
  }
}
