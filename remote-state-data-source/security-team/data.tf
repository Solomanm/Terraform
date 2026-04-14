data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "remote-state-bucket-store"
    key    = "eip.tfstate"
    region = "us-east-1"
  }
  
}