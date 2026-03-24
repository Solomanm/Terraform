resource "aws_security_group" "payment_database_firewall" {
  name = "database_firewall"
}

// Move the security group from the old location to the new one
moved {
  from = aws_security_group.database_firewall
  to = aws_security_group.payment_database_firewall
}
