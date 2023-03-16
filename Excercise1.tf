provider "aws" {
  region     = "us-east-2"
  access_key = ""
  secret_key = ""
}

#Creating EC2 Instance
resource "aws_instance" "Terra1" {
  ami                    = "ami-00eeedc4036573771"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-2a"
  key_name               = "first-key"
  vpc_security_group_ids = ["sg-0a727b162a610021a"]
  tags = {
    "Name" = "Excercise1"
  }
}