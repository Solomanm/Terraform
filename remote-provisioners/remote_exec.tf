resource "aws_instance" "myec2" {
  ami = "ami-02dfbd4ff395f2a1b"
  instance_type = "t3.micro"
  key_name = "terraform-key"
  vpc_security_group_ids = ["sg-08f76705b5130b1ac"]

  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = file("./terraform-key.pem")
    host = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [ 
        "sudo yum -y install nginx",
        "sudo systemctl start nginx"

     ]
  }
}