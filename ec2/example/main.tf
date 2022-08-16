module "my_aws_instance" {
  source = "../"
  ami1 = "ami-090fa75af13c156b4"
  ami2 = "ami-090fa75af13c156b4"
  ami3 = "ami-090fa75af13c156b4"
  size = 40
  choice = false
}

module "my_iam_users" {
  source = "../../iam"
  user_names = ["dinesh1","dinesh2","dinesh3"]
}

