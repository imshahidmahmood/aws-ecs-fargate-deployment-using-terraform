resource "aws_lb" "kipina_prod_alb" {
  name               = var.alb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.load_balancer_wizard_prod_sg.id]

  subnets = [
    data.aws_subnet.kipina_subnet_public_1.id,
    data.aws_subnet.kipina_subnet_public_2.id,
    data.aws_subnet.kipina_subnet_public_3.id
  ]

  enable_deletion_protection = false

  tags = {
    Name = var.alb_name
  }
}
