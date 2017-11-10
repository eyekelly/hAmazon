provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "UaR_02_1" {
  ami = "ami-6b7c6e0f"
  instance_type = "t2.micro"
  tags {
    name = "UaR_02_1"
  }
}
