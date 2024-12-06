variable "dynamo_first_table_name" {
  type = string
  description = "The name of the DynamoDB table"
  default     = "users"
}

variable "dynamo_second_table_name" {
  type = string
  description = "The name of the DynamoDB table"
  default     = "production-tracker"
}

variable "dynamodb_billing_mode" {
  type = string
  description = "The billing mode of the DynamoDB table"
  default     = "PROVISIONED"
  
}

variable "dynamo_first_table_hash_key" {
  type = string
  description = "The hash key of the DynamoDB table"
  default     = "cpf"
}

variable "dynamo_second_table_hash_key" {
  type = string
  description = "The hash key of the DynamoDB table"
  default     = "order_number"
}

variable "dynamodb_read_capacity" {
  type = number
  description = "The read capacity of the DynamoDB table"
  default     = 20
  
}

variable "dynamodb_write_capacity" {
  type = number
  description = "The write capacity of the DynamoDB table"
  default     = 20
  
}

