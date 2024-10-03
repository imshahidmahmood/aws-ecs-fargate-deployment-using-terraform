resource "aws_lb_listener" "kipina_prod_https_listener" {
  load_balancer_arn = aws_lb.kipina_prod_alb.arn
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-2021-06"
  certificate_arn   = var.certificate_arn

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.kipina_prod_tg.arn
  }
}


resource "aws_lb_listener" "kipina_prod_http_listener" {
  load_balancer_arn = aws_lb.kipina_prod_alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "redirect"
    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }
}
