variable "region" {
  type = string
  description = "The default region to use for the AWS provider"
}

variable "vpc_availability_zones" {
  type = string
  description = "The availability zones to use for the VPC"
  default = "opt-in-not-required"
}

variable "project_name" {
  type        = string
  description = "The name of the project"
}

variable "vpc_name" {
  type = string
  description = "The name of the VPC"
}

variable "vpc_cidr" {
  type = string
  description = "The CIDR block for the VPC"
  default = "10.0.0.0/16"
}

variable "vpc_private_subnets" {
  type = list(string)
  description = "A list of private subnet CIDR blocks"
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "vpc_public_subnets" {
  type = list(string)
  description = "A list of public subnet CIDR blocks"
  default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "vpc_enable_dns_hostnames" {
  type = bool
  description = "A boolean flag to enable/disable DNS hostnames in the VPC"
  default = true
}

variable "vpc_enable_dns_support" {
  type = bool
  description = "A boolean flag to enable/disable DNS support in the VPC"
  default = true
}

variable "vpc_enable_nat_gateway" {
  type = bool
  description = "A boolean flag to enable/disable NAT gateways in the VPC"
  default = true
}

variable "vpc_single_nat_gateway" {
  type = bool
  description = "A boolean flag to enable/disable single NAT gateway in the VPC"
  default = true
}