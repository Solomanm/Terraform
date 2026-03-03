locals {
  default = {
    Team = "security-team"
    CreationDate = "date-${formatdate("YYYY-MM-DD", timestamp())}"
  }
}

resource "aws_security_group" "sg_01" {
    name        = "app_firewall"
    description = "Security group for allowing specific traffic"
    tags = local.default
  
}

resource "aws_security_group" "sg_02" {
    name        = "db_firewall"
    description = "Security group for allowing specific egress traffic"
    tags = local.default
  
}