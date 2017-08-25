# Create an arbitrary local resource
data "template_file" "test" {
  template = "<iframe src=\"http://free.timeanddate.com/clock/i28mkpbc/tlde3/tct/pct/tt0\" frameborder=\"0\" width=\"277\" height=\"18\" allowTransparency=\"true\"></iframe> Hello, I am a template. My sample_var value = $${sample_var}, terraform_tfvars_found = $${terraform_tfvars_found}"

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
