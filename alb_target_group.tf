resource "aws_lb_target_group" "kipina_prod_tg" {
  name        = var.target_group_name
  port        = var.container_port
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = data.aws_vpc.kipina_vpc.id # Use the existing dev VPC

  health_check {
    path                = var.health_check_path
    interval            = 60
    timeout             = 30
    healthy_threshold   = 5
    unhealthy_threshold = 2
    matcher             = "200"
  }

  tags = {
    Name = var.target_group_name
  }
}
