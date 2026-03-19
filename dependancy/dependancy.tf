resource "aws_instance" "myec2" {
  ami = "ami-02dfbd4ff395f2a1b"
  instance_type = "t3.micro"
  // This will ensure that the EC2 instance is created only after the S3 bucket is created
  depends_on = [ aws_s3_bucket.mybucket ]
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "firstbucket-terraform" 
}