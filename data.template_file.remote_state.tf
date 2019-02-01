data "template_file" "remote_state" {
  template = "${file("${path.module}/remote_state.tf.template")}"

  vars {}
}
