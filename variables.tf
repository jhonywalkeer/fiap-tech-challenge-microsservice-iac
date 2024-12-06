variable "region" {
  type        = string
  description = "The default region to use for the AWS provider"
  default     = "us-east-1"
}

variable "environment" {
  type        = string
  description = "The environment to deploy the resources"
  default     = "dev"
}

variable "project_name" {
  type        = string
  description = "The name of the project"
  default     = "fiap-tech-challenge"
}

variable "vpc_name" {
  type        = string
  description = "The name of the VPC"
  default = "fiap-tech-challenge-vpc"
}

variable "dynamo_first_table_name" {
  type        = string
  description = "The name of the first DynamoDB table"
}

variable "dynamo_second_table_name" {
  type        = string
  description = "The name of the second DynamoDB table"
}

variable "eks_cluster_name" {
  type        = string
  description = "The name of the EKS cluster"
  default = "eks_cluster_fiap_tech_challenge"
}