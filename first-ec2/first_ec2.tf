provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2Terraform" {
    ami           = "ami-0f3caa1cf4417e51b"
    instance_type = "t3.micro"
    count = 3

    tags = {
        Name = "MyEC2Terraform-${count.index + 1}"
    }
  
}