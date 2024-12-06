variable "rds_instance_first_name" {
  type = string
  description = "The name of the RDS instance"
  default     = "clients"
}

variable "rds_instance_second_name" {
  type = string
  description = "The name of the RDS instance"
  default     = "products"
}

variable "rds_instance_third_name" {
  type = string
  description = "The name of the RDS instance"
  default     = "categories"
}

variable "rds_instance_fourth_name" {
  type = string
  description = "The name of the RDS instance"
  default     = "orders"
}

variable "rds_instance_fifth_name" {
  type = string
  description = "The name of the RDS instance"
  default     = "payments"
}


variable "rds_engine" {
  type = string
  description = "The engine of the RDS instance"
  default     = "postgres"
}

variable "rds_engine_version" {
  type = string
  description = "The engine version of the RDS instance"
  default     = "14.11"
}

variable "project_name" {
  type = string
  description = "The project name of the RDS instance"
}

variable "rds_user" {
  type = string
  description = "The username of the RDS instance"
  default = "root"
}

variable "rds_pass" {
  type = string
  description = "The password of the RDS instance"
  default = "1234"
}

variable "rds_instance_class" {
  type = string
  description = "The instance class of the RDS instance"
  default     = "db.t2.micro"
}

variable "rds_storage_type" {
  type = string
  description = "The storage type of the RDS instance"
  default     = "gp2"
}

variable "rds_min_storage" {
  type = number
  description = "The minimum storage of the RDS instance"
  default     = 20
}

variable "rds_max_storage" {
  type = number
  description = "The maximum storage of the RDS instance"
  default     = 100
}

variable "rds_backup_retention" {
  type = number
  description = "The backup retention period of the RDS instance"
  default     = 1
}

variable "rds_backup_window" {
  type = string
  description = "The backup window of the RDS instance"
  default     = "00:00-01:00"
}

variable "multi_az" {
  type = bool
  description = "The multi-az of the RDS instance"
  default     = false
  
}
