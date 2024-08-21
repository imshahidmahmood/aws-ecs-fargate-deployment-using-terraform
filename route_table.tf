# resource "aws_route_table" "kipina_dev_route_table_public" {
#   vpc_id = aws_vpc.kipina_dev_vpc.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.kipina_dev_igw.id
#   }
#   tags = {
#     Name = "kipina_dev_route_table_public"
#   }
# }

# resource "aws_route_table_association" "kipina_dev_rta_public" {
#   subnet_id      = aws_subnet.kipina_dev_subnet_public_1.id
#   route_table_id = aws_route_table.kipina_dev_route_table_public.id
# }
