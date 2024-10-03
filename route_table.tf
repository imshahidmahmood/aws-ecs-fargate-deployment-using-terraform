resource "aws_route_table" "kipina_prod_public_rt" {
  vpc_id = data.aws_vpc.kipina_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = data.aws_internet_gateway.kipina_prod_igw.id
  }

  tags = {
    Name = "kipina_prod_public_rt"
  }
}

