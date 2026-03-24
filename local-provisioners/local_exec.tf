resource "aws_instance" "myec2" {
  ami = "ami-02dfbd4ff395f2a1b"
  instance_type = "t3.micro"

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> ip_addresses.txt"
  }
}