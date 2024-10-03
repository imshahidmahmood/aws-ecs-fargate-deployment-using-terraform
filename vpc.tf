data "aws_vpc" "kipina_vpc" {
  filter {
    name   = "tag:Name"
    values = ["kipina_vpc"] # Replace this with the actual tag name if needed
  }
}
