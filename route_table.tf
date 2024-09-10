resource "aws_route_table" "kipina_dev_public_rt" {
  vpc_id = aws_vpc.kipina_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.kipina_dev_igw.id
  }

  tags = {
    Name = "kipina_dev_public_rt"
  }
}

resource "aws_route_table_association" "subnet_public_1_association" {
  subnet_id      = aws_subnet.kipina_subnet_public_1.id
  route_table_id = aws_route_table.kipina_dev_public_rt.id
}

resource "aws_route_table_association" "subnet_public_2_association" {
  subnet_id      = aws_subnet.kipina_subnet_public_2.id
  route_table_id = aws_route_table.kipina_dev_public_rt.id
}

resource "aws_route_table_association" "subnet_public_3_association" {
  subnet_id      = aws_subnet.kipina_subnet_public_3.id
  route_table_id = aws_route_table.kipina_dev_public_rt.id
}
