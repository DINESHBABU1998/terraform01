resource "aws_instance" "web" {
  ami           = var.ami1
  instance_type = "t2.micro"

  tags = {
    Name = "dine"
  }
}

resource "aws_instance" "web2" {
  ami           = var.ami2
  instance_type = "t2.micro"

  tags = {
    Name = "babu"
  }
}

resource "aws_instance" "web3" {
  ami           = var.ami3
  instance_type = "t2.micro"

  tags = {
    Name = "din"
  }
}


resource "aws_ebs_volume" "example" {
  count = var.choice ? 1 : 0
  availability_zone = "us-west-2a"
  size              = var.size

  tags = {
    Name = "dinesh_ebs"
  }
}