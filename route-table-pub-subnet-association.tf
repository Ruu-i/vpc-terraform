resource "aws_route_table_association" "public_subnet_asso" {
  count          = length(var.cidr_public_subnet)
  depends_on     = [aws_subnet.aws_ru_public_subnets, aws_route_table.ru_public_route_table]
  subnet_id      = element(aws_subnet.aws_ru_public_subnets[*].id, count.index)
  route_table_id = aws_route_table.ru_public_route_table.id
}

resource "aws_route_table_association" "private_subnet_asso" {
  count          = length(var.cidr_private_subnet)
  depends_on     = [aws_subnet.aws_ru_private_subnets, aws_route_table.ru_private_route_table]
  subnet_id      = element(aws_subnet.aws_ru_private_subnets[*].id, count.index)
  route_table_id = aws_route_table.ru_private_route_table[count.index].id
}