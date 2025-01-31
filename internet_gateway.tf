data "aws_internet_gateway" "kipina_prod_v2_igw" {
  filter {
    name   = "tag:Name"
    values = ["kipina_dev_igw"]
  }

}
