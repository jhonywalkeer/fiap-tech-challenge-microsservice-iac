variable "security_group_name" {
  type = string
  description = "The name of the security group"
  default     = "rds-security-group"
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "security_group_port" {
  type = number
  description = "The port of the security group"
  default     = 5432
  
}

variable "security_group_protocol" {
  type = string
  description = "The protocol of the security group"
  default     = "tcp"
}

variable "security_group_CIDR" {
  type = string
  description = "The CIDR of the security group"
  default     = "0.0.0.0/0"
}