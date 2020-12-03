resource "aws_iam_role_policy" "role_policy" {
  name = var.role_and_policy.role_name
  role = aws_iam_role.role.id
  policy = var.role_and_policy.role_policy
}

resource "aws_iam_role" "role" {
  name = var.role_and_policy.role_name
  assume_role_policy = var.role_and_policy.assume_role_policy
}
