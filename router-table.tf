resource "aws_route_table" "ru_public_route_table" {
  vpc_id = aws_vpc.vpc-ru-ap-southeast-1.id
  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.public_internet_gateway.id
    }
  
  tags = {
    Name = "RT public: for ru vpc"
  }
}

resource "aws_route_table" "ru_private_route_table" {
  count      = length(var.cidr_private_subnet)
  vpc_id     = aws_vpc.vpc-ru-ap-southeast-1.id
  depends_on = [aws_nat_gateway.nat_gateway]
  route {
      cidr_block     = "0.0.0.0/0"
      nat_gateway_id = aws_nat_gateway.nat_gateway[count.index].id
    }
  
  tags = {
    Name = "RT private: for ru vpc"
  }

}