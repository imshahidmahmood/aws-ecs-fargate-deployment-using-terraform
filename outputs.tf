output "ecs_cluster_name" {
  value = aws_ecs_cluster.kipina_prod_cluster.name
}

output "ecs_service_name" {
  value = aws_ecs_service.kipina_prod_service.name
}
