# Create an arbitrary local resource
data "template_file" "test" {
  template = <<EOT
<img src="http://techbakbak.com/wp-content/uploads/2016/09/everyone-can-create-and-use-Twitter-moments-now.jpg" style="width:304px;height:228px;"
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
