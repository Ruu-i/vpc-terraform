resource "aws_vpc" "vpc-ru-ap-southeast-1" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "VPC: ap-southeast-1"
  }
}