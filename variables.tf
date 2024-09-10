variable "cluster_name" {
  description = "Name of the ECS Cluster"
  type        = string
}

variable "service_name" {
  description = "Name of the ECS Service"
  type        = string
}

variable "task_family_name" {
  description = "Family name of the ECS Task"
  type        = string
}

variable "task_cpu" {
  description = "CPU units for the ECS Task"
  type        = string
}

variable "task_memory" {
  description = "Memory (in MiB) for the ECS Task"
  type        = string
}

variable "container_image" {
  description = "Container image to use"
  type        = string
}

variable "container_port" {
  description = "Container port to expose"
  type        = number
}

variable "desired_count" {
  description = "Desired number of ECS Service instances"
  type        = number
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "subnet_public_1_cidr_block" {
  description = "CIDR block for the first public subnet"
  type        = string
}

variable "availability_zone_1" {
  description = "Availability Zone for the first public subnet"
  type        = string
}

variable "subnet_public_1_name" {
  description = "Name of the first public subnet"
  type        = string
}

variable "subnet_public_2_cidr_block" {
  description = "CIDR block for the second public subnet"
  type        = string
}

variable "availability_zone_2" {
  description = "Availability Zone for the second public subnet"
  type        = string
}

variable "subnet_public_2_name" {
  description = "Name of the second public subnet"
  type        = string
}

variable "subnet_public_3_cidr_block" {
  description = "CIDR block for the third public subnet"
  type        = string
}

variable "availability_zone_3" {
  description = "Availability Zone for the third public subnet"
  type        = string
}

variable "subnet_public_3_name" {
  description = "Name of the third public subnet"
  type        = string
}

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
}

variable "target_group_name" {
  description = "Name of the ALB target group"
  type        = string
}

variable "health_check_path" {
  description = "Path for the ALB health check"
  type        = string
}

variable "alb_name" {
  description = "Name of the Application Load Balancer"
  type        = string
}

variable "ecs_task_execution_role_name" {
  description = "Name of the ECS Task Execution Role"
  type        = string
}

variable "certificate_arn" {
  description = "The ARN of the SSL certificate to use with the ALB"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "awslogs_group" {
  description = "CloudWatch Logs group for ECS task"
  type        = string
  default     = ""
}
