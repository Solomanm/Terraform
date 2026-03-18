
resource "aws_instance" "myec21" {
  ami = "ami-0b6c6ebed2801a5cb"
  instance_type = "t3.micro"

  tags = {
    name = "HelloEarth"
  }

  lifecycle {
    // This will ensure that when we make changes to the instance, Terraform will create a new instance before destroying the old one.
    create_before_destroy = true
    // This will prevent the instance from being destroyed.
    //prevent_destroy = true
  }
}