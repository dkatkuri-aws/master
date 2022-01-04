# create EC2 Instance
resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
tags {
    Name = "Test-EC2"
  }
}