terraform {
  backend "s3" {
    bucket = "remote-state-bucket-store"
    key = "eip.tfstate"
    region = "us-east-1"
  }
}