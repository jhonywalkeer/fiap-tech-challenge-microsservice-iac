resource "aws_dynamodb_table" "users" {
  name           = "${var.dynamo_first_table_name}"
  billing_mode   = var.dynamodb_billing_mode
  read_capacity  = var.dynamodb_read_capacity
  write_capacity = var.dynamodb_read_capacity
  hash_key       = var.dynamo_first_table_hash_key

  attribute {
    name = "cpf"
    type = "S"
  }
}

resource "aws_dynamodb_table" "production" {
  name           = "${var.dynamo_second_table_name}"
  billing_mode   = var.dynamodb_billing_mode
  read_capacity  = var.dynamodb_read_capacity
  write_capacity = var.dynamodb_read_capacity
  hash_key       = var.dynamo_second_table_hash_key

  attribute {
    name = "order_number"
    type = "S"
  }
}
