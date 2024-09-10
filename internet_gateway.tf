resource "aws_internet_gateway" "kipina_dev_igw" {
  vpc_id = aws_vpc.kipina_vpc.id

  tags = {
    Name = "kipina_dev_igw"
  }
}
