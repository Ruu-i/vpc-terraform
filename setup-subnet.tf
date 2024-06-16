#public subnet

resource "aws_subnet" "aws_ru_public_subnets" {
  count             = length(va.cidr_public_subnet)
  vpc_id            = aws_vpc.vpc-ru-ap-southeast-1.id
  cidr_block        = element(var.cidr_public_subnet, count.index)
  availability_zone = element(var.ap-southeast-1_zone, count.index)

  tags = {
    Name = "subnet-public : public subnet ${count.index + 1}"
  }

}

#private subnet

resource "aws_subnet" "aws_ru_private_subnets" {
  count             = length(var.cidr_private_subnet)
  vpc_id            = aws_vpc.vpc-ru-ap-southeast-1.id
  cidr_block        = element(var.cidr_private_subnet, count.index)
  availability_zone = element(var.ap-southeast-1_zone, count.index)

  tags = {
    Name = "subnet-private : private subnet ${count.index + 1}"
  }

}