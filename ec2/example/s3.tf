terraform {
  backend "s3" {
    bucket = "buck-4"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "any"
  }
}