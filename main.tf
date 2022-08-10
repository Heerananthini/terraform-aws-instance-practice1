module "vpc-practice" {
  source  = "app.terraform.io/git_practice_ec2/vpc-practice/aws"
  version = "1.0.0"
  # insert required variables here
  vpc_cidr = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  available_zone = var.available_zone
}

  resource "aws_instance" "web" {
  ami               = var.ami
  instance_type     = var.instance_type
  subnet_id = aws_subnet.web_subnet.id
  tags              = {
     "Name" = "web"
  }
}
