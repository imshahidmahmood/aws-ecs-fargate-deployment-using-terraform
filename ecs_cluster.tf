resource "aws_ecs_cluster" "kipina_prod_cluster" {
  name = var.cluster_name
}
