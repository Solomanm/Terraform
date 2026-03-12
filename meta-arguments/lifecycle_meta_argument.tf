provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami = "ami-02dfbd4ff395f2a1b"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
# The lifecycle block is used to ignore changes to the tags attribute. This means that if you change the tags in your Terraform configuration, Terraform will not attempt to update the tags on the existing EC2 instance. This can be useful if you want to manage the tags outside of Terraform or if you want to prevent accidental changes to the tags.
  lifecycle {
    ignore_changes = [ tags ]
  }
}