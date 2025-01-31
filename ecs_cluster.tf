# resource "aws_ecs_cluster" "kipina_prod_v2_cluster" {
#   name = var.cluster_name
# }
data "aws_ecs_cluster" "kipina_existing_cluster" {
  cluster_name = "kipina-prod"
}