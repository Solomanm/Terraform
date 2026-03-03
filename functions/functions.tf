resource "aws_iam_user" "this" {
  name = "demo-kplabs-user"
}

resource "aws_iam_user_policy" "lb_ro" {
  name = "demo-kplabs-user-policy"
  user = aws_iam_user.this.name

  policy = file("/Users/proudmtileni/terraform/functions/iam-user-policy.json")

}