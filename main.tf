# Create an arbitrary local resource
data "template_file" "test" {
  template = <<EOT
sample_var value = "${var.sample_var}", 
sample_list = "${var.sample_list}"
sample_map = "${var.sample_map}"
terraform_tfvars_found = "${var.terraform_tfvars_found}"
EOT
}

resource "null_resource" "sleep" {
  triggers {
    uuid = "${uuid()}"
  }

  provisioner "local-exec" {
    command = "set" 
  }
}
