output "instance" {
  value = module.my_aws_instance.ins_type
}

output "usernames" {
  value = module.my_iam_users.users
}
