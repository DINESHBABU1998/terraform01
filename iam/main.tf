resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [for i in aws_iam_user.user-1 : i.name]

  group = aws_iam_group.group.name
}

resource "aws_iam_group" "group" {
  name = "dinesh-group"
}

resource "aws_iam_user" "user-1" {
  count = length(var.user_names)
  name = var.user_names[count.index]
  path = "/system/"
}
