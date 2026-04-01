module "ec2-instance" {
source  = "terraform-aws-modules/ec2-instance/aws"
version = "6.4.0"
subnet_id = "subnet-050703f2828b7d1e7"
}