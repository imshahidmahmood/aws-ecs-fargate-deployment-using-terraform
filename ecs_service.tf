resource "aws_ecs_service" "kipina_dev_service" {
  name            = var.service_name
  cluster         = aws_ecs_cluster.kipina_dev_cluster.id
  task_definition = aws_ecs_task_definition.kipina_dev_task.arn
  desired_count   = var.desired_count
  launch_type     = "FARGATE"

  network_configuration {
    subnets          = [
      aws_subnet.kipina_dev_subnet_public_1.id,
      aws_subnet.kipina_dev_subnet_public_2.id
    ]
    security_groups  = [aws_security_group.kipina_dev_sg.id]
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.kipina_dev_tg.arn
    container_name   = "kipina-dev-container"
    container_port   = var.container_port
  }

  depends_on = [
    aws_iam_role_policy_attachment.ecs_task_execution_role_policy,
    aws_lb_listener.kipina_dev_https_listener
  ]
}
