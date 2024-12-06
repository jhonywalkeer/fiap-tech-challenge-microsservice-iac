output "dynamodb_table_id" {
  description = "The ID of the DynamoDB table"
  value       = try(aws_dynamodb_table.users.id, "")
}

output "dynamo_first_table_name" {
  value = aws_dynamodb_table.users.name
}

output "dynamo_second_table_name" {
  value = aws_dynamodb_table.production.name
}