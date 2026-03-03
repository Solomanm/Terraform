provider "aws" {
  region = "us-east-1"
}

data "local_file" "foo" {
  filename = "${path.module}/foo.txt"
}

output "data" {
    value = data.local_file.foo.content
  
}

data "aws_instances" "example" {
  
}