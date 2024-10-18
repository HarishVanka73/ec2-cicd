provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "ec2-pro" {
    ami = var.ami
    instance_type = var.instance_type
  
  tags = {
    Name = var.name
  }
}

output "public-ip" {
    value = aws_instance.ec2-pro.public_ip
}