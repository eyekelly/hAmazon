provider "aws" {
  region = "us-east-1"
}

variable "server_port" {
  description = "port for http requests"
  default = 8080
}

output "public IP" {
  value = "${aws_instance.UaR_02_1.public_ip}"
}

resource "aws_security_group" "ssh_access_TCH" {
  name = "ssh"
  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["194.74.174.162/32"]
  }
}

resource "aws_security_group" "SG_UaR_02_1" {
  name = "SG_UaR_02_1"
  ingress {
    from_port = "${var.server_port}"
    to_port   = "${var.server_port}"
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "UaR_02_1" {
  ami = "ami-40d28157"
  instance_type = "t2.micro"

  vpc_security_group_ids = ["${aws_security_group.SG_UaR_02_1.id}","${aws_security_group.ssh_access_TCH.id}"]

  user_data = <<-EOF
  #!/bin/bash
  echo "hello World" > index.html
  nohup busybox httpd -f -p "${var.server_port}" &
  EOF

  tags {
    Name = "UaR_02_1"
  }
}
