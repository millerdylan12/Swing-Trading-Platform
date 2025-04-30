// infra/terraform/outputs.tf

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "IDs of the public subnets"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "IDs of the private subnets"
  value       = module.vpc.private_subnets
}

output "github_actions_role_arn" {
  description = "IAM Role ARN that GitHub Actions assumes"
  value       = aws_iam_role.github_actions.arn
}
