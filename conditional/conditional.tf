variable "environment" {
  default = "development"
}

resource "aws_instance" "myec2" {
  ami = "ami-0f3caa1cf4417e51b"
  instance_type = var.environment == "development" ? "t2.micro" : "t3.micro"
}