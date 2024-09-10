resource "aws_lb" "kipina_dev_alb" {
  name               = var.alb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.load_balancer_wizard_sg.id]
  subnets = [
    aws_subnet.kipina_subnet_public_1.id,
    aws_subnet.kipina_subnet_public_2.id,
    aws_subnet.kipina_subnet_public_3.id
  ]

  enable_deletion_protection = false

  tags = {
    Name = var.alb_name
  }
}
