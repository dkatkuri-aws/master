# Create an EC2 instance
module "ec2-east-1" {
  count = var.aws_region == us-east-1 ? 1 : 0
  source                   = "./ec1"
  ami                      = "ami-0ed9277fb7eb570c9"
  instance_type            = "t2.micro"


}

module "ec2-east-2" {
  count = var.aws_region == us-east-2 ? 1 : 0
  source                   = "./ec2"
  ami                      = "ami-0a0ad6b70e61be944"
  instance_type            = "t2.micro"

}

