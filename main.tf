resource "aws_instance" "web" {
  ami               = var.ami
  instance_type     = var.instance_type
  tags              = {
     "Name" = "web"
  }
}
module "instance-practice" {
  source  = "app.terraform.io/git_practice_ec2/instance-practice/aws"
  version = "1.0.0"
  # insert required variables here
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.web_subnet.id
}
