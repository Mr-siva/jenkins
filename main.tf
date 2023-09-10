provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
   ami = var.ami  #"ami-08a52ddb321b32a8c"
   instance_type = var.instance_type

    tags = {
    name      = var.name
    create_by = var.created_by
  }
}

##########################################

variable "instance_type" {
    type = string
    default = "t2.micro"  
}

variable "ami" {
    default = "ami-08a52ddb321b32a8c"
  
}

variable "name" {
    dafault = "siva"
}
variable "created_by" {
    dafault = "terraform_git_modules"
}
