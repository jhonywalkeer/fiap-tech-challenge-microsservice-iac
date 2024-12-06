variable "subnet_group_name" {
  description = "The name of the subnet group"
  type        = string
  default = "rds-subnet-group"
  
}

variable "public_subnets" {
  description = "A list of public subnets"
  type        = list(string)
}