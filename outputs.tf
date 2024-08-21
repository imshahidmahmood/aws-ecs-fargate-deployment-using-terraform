output "ecs_cluster_name" {
  value = aws_ecs_cluster.kipina_dev_cluster.name
}

output "ecs_service_name" {
  value = aws_ecs_service.kipina_dev_service.name
}
