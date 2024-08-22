resource "aws_subnet" "kipina_dev_subnet_public_1" {
  vpc_id                  = aws_vpc.kipina_dev_vpc.id
  cidr_block              = var.subnet_public_1_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone_1

  tags = {
    Name = var.subnet_public_1_name
  }
}

resource "aws_subnet" "kipina_dev_subnet_public_2" {
  vpc_id                  = aws_vpc.kipina_dev_vpc.id
  cidr_block              = var.subnet_public_2_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone_2

  tags = {
    Name = var.subnet_public_2_name
  }
}
