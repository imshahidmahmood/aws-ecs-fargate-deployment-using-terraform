# AWS ECS Fargate Deployment using Terraform

This repository contains Terraform configuration files to deploy an AWS ECS Cluster using Fargate. It includes the necessary resources like VPC, Subnets, Security Groups, ECS Task Definition, ECS Service, Application Load Balancer (ALB), Target Group, and IAM Roles.

## Project Structure

- **`provider.tf`**: Configures the AWS provider.
- **`vpc.tf`**: Defines the Virtual Private Cloud (VPC).
- **`subnet.tf`**: Configures the public subnet.
- **`security_group.tf`**: Defines the security group.
- **`ecs_cluster.tf`**: Creates the ECS cluster.
- **`ecs_task_definition.tf`**: Defines the ECS task.
- **`ecs_service.tf`**: Configures the ECS service.
- **`alb.tf`**: Creates the Application Load Balancer (ALB).
- **`alb_target_group.tf`**: Defines the ALB target group.
- **`alb_listener.tf`**: Configures the ALB listener for HTTPS traffic.
- **`iam_role.tf`**: Creates the IAM role for ECS task execution.
- **`iam_policy_attachment.tf`**: Attaches the IAM policy to the ECS task execution role.
- **`variables.tf`**: Declares all variables used in the configuration.
- **`terraform.tfvars`**: Contains the values for the variables.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed.
- AWS credentials configured either in the `~/.aws/credentials` file or through environment variables.
- An existing SSL certificate in AWS ACM (for HTTPS traffic).

## Usage

1. **Clone the repository:**

   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```
   
2. **Initialize Terraform:**
    ```bash
    terraform init
    ```

3. **Modify terraform.tfvars to match your environment::**
 
   Update the variables in terraform.tfvars with your AWS environment details. Ensure that the SSL certificate ARN is correct.

4. **Plan the deployment:**
    ```bash
    terraform plan
    ```
   Review the plan to ensure that all changes are as expected.

5. **Apply the configuration:**
    ```bash
    terraform apply
    ```
   Confirm the action when prompted.

## Notes
- Variables: Sensitive data like AWS credentials should be managed carefully. Consider using environment variables or a secret management service.
- State Management: Consider using a remote backend (e.g., S3 with DynamoDB for locking) for state management in production environments.
- IAM Roles and Policies: Ensure that the IAM roles and policies used are least-privileged, following best practices for security.

## Troubleshooting
- ECS Service Unhealthy: If the ECS service stays unhealthy, check the health check path in the target group and ensure the container is serving traffic correctly on the specified port.
- Terraform Errors: Run terraform validate and terraform plan to debug any issues with the configuration before applying changes.

## Contributing
   Contributions are welcome! Please open an issue or submit a pull request with your improvements.

## Acknowledgments
- Terraform Documentation
- AWS Documentation
