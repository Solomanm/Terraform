variable "user_name" {
  type = set(string)
    default = ["alice", "bob", "john"]
}

resource "aws_iam_user" "users" {
  for_each = var.user_name
  name     = each.value
}