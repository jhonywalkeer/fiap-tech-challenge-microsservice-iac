output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.main.id
}

output "public_subnets" {
  description = "A list of public subnets inside the VPC"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "A list of private subnets inside the VPC"
  value       = module.vpc.private_subnets
}