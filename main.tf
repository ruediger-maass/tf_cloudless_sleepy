# Create an arbitrary local resource
data "template_file" "test" {
  template = <<EOT
<a href="url">https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgkyC5j4paNmBRbcbrnYZMAFtvkejZh0QrvVQQXwXGEBnzaZpF</a>
Hello, I am a template. My sample_var value = $${sample_var}, terraform_tfvars_found = $${terraform_tfvars_found}
EOT
  vars {
    sample_var = "${var.sample_var}"
    terraform_tfvars_found = "${var.terraform_tfvars_found}"
  } 
}

resource "null_resource" "sleep" {
  triggers {
    uuid = "${uuid()}"
  }

  provisioner "local-exec" {
    command = "set && export && ps -ef"
  }
}
