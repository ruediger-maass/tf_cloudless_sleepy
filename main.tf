
data "template_file" "test" {
  template = "Hello, I am a template. My sample_var value = ${var.sample_var}. The sleep time is ${var.sleepy_time}"
}

resource "null_resource" "sleep" {
  triggers {
    uuid = "${uuid()}"
  }

  provisioner "local-exec" {
    command = "sleep ${var.sleepy_time}"
  }
}
