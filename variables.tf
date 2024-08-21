# variable "aws_profile" {
#   description = "AWS profile to use"
#   type        = string
#   default     = "kipina"
# }

# variable "aws_region" {
#   description = "AWS region"
#   type        = string
#   default     = "eu-west-2"
# }

variable "cluster_name" {
  description = "Name of the ECS Cluster"
  type        = string
  default     = "kipina-dev"
}

variable "service_name" {
  description = "Name of the ECS Service"
  type        = string
  default     = "kipina-dev-service"
}

variable "task_family_name" {
  description = "Family name of the ECS Task"
  type        = string
  default     = "kipina-dev-task"
}

variable "task_cpu" {
  description = "CPU units for the ECS Task"
  type        = string
  default     = "1024"
}

variable "task_memory" {
  description = "Memory (in MiB) for the ECS Task"
  type        = string
  default     = "4096"
}

variable "container_image" {
  description = "Container image to use"
  type        = string
  default     = "nginx:latest"
}

variable "container_port" {
  description = "Container port to expose"
  type        = number
  default     = 3000
}

variable "desired_count" {
  description = "Desired number of ECS Service instances"
  type        = number
  default     = 1
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "kipina_dev_vpc"
}

variable "subnet_public_1_cidr_block" {
  description = "CIDR block for the first public subnet"
  type        = string
  default     = "10.0.10.0/24"
}

variable "availability_zone_1" {
  description = "Availability Zone for the first public subnet"
  type        = string
  default     = "eu-west-2a"
}

variable "subnet_public_1_name" {
  description = "Name of the first public subnet"
  type        = string
  default     = "kipina_dev_subnet_public_1"
}

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
  default     = "kipina_dev_sg"
}

variable "target_group_name" {
  description = "Name of the ALB target group"
  type        = string
  default     = "kipina-dev-tg"
}

variable "health_check_path" {
  description = "Path for the ALB health check"
  type        = string
  default     = "/api/user"
}

variable "alb_name" {
  description = "Name of the Application Load Balancer"
  type        = string
  default     = "kipina-dev-alb"
}

variable "ecs_task_execution_role_name" {
  description = "Name of the ECS Task Execution Role"
  type        = string
  default     = "ecsTaskExecutionRole-kipina-dev"
}

variable "certificate_arn" {
  description = "The ARN of the SSL certificate to use with the ALB"
  type        = string
}
