# subnets.tf

# Data source for existing public subnet 1
data "aws_subnet" "kipina_subnet_public_1" {
  filter {
    name   = "tag:Name"
    values = ["kipina_subnet_public_1"] # Correct subnet name based on provided info
  }
}

# Data source for existing public subnet 2
data "aws_subnet" "kipina_subnet_public_2" {
  filter {
    name   = "tag:Name"
    values = ["kipina_subnet_public_2"] # Correct subnet name based on provided info
  }
}

# Data source for existing public subnet 3
data "aws_subnet" "kipina_subnet_public_3" {
  filter {
    name   = "tag:Name"
    values = ["kipina_subnet_public_3"] # Correct subnet name based on provided info
  }
}
