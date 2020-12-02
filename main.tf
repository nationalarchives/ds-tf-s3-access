count = length(var.roles_and_policies)

resource "aws_iam_role_policy" "role_policy" {
  name = var.roles_and_policies[count.index].role_policy_name
  role = aws_iam_role.role.id
  policy = var.roles_and_policies[count.index].role_policy
}

resource "aws_iam_role" "role" {
  name = var.roles_and_policies[count.index].role_name

  assume_role_policy = var.roles_and_policies[count.index].assume_role_policy
}
