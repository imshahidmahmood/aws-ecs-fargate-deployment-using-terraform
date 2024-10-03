data "aws_internet_gateway" "kipina_prod_igw" {
  filter {
    name   = "tag:Name"
    values = ["kipina_dev_igw"]
  }

}
