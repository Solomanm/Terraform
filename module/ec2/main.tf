provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami = "ami-01b14b7ad41e17ba4"
  instance_type = "t3.micro"
}