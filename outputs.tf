output "ecs_cluster_name" {
  value = data.aws_ecs_cluster.kipina_existing_cluster.id
}

output "ecs_service_name" {
  value = aws_ecs_service.kipina_prod_v2_service.name
}
