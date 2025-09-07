provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI in us-east-1
  instance_type = var.instance_type
  key_name      = var.key_pair_name

  tags = {
    Name = "MyFirstEC2"
  }

  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
}

resource "aws_security_group" "ec2_sg" {
  name        = "ec2_sg"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ssh_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
