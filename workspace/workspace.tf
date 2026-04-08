locals {
  instance_type = {
    default = "t2.nano"
    dev = "t3.micro"
    prod = "m5.large"
  }
}
resource "aws_instance" "myec2" {
  ami = "ami-01b14b7ad41e17ba4"
  instance_type = local.instance_type[terraform.workspace]
}