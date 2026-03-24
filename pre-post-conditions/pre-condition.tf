variable "instance_type" {}

data "aws_ec2_instance_type" "example" {
  instance_type = var.instance_type
}

resource "aws_instance" "example" {
  instance_type = var.instance_type
  ami = "ami-02dfbd4ff395f2a1b"

  lifecycle {
    precondition {
      condition = data.aws_ec2_instance_type.example.free_tier_eligible
      error_message = "Only Launch free tier eligible EC2"
    }
    postcondition {
      condition = self.public_ip == ""
      error_message = "EC2 must have public address"
    }
  }
}