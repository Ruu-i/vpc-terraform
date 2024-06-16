resource "aws_internet_gateway" "public_internet_gateway" {
  vpc_id = aws_vpc.vpc-ru-ap-southeast-1.id
  tags = {
    Name = "IGW: for aws vpc"
  }
}