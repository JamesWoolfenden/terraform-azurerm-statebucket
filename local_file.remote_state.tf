resource "local_file" "remote_state" {
  content  = data.template_file.remote_state.rendered
  filename = "remote_state.tf"
}
