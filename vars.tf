# Configure these variables

variable "sample_var" {
  description = "A sample_var to pass to the template."
  default     = "hello"
}

variable "sleepy_time" {
  description = "How long our local-exec will take a nap."
  default     = 30
}

variable "terraform_tfvars_found" {
  description = "Check if 'terraform.tfvars' overrides the value."
  default     = 0
}

variable "sample_map" {
  type = "map"
  default = {
    last_name = "Doe"
    first_nam = "John"
  }
}

variable "sample_list" {
  type = "list"
  default = ["sweet", "sour", "bitter"]
}
