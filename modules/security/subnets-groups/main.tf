resource "aws_db_subnet_group" "rds" {
  name       = var.subnet_group_name
  subnet_ids = var.public_subnets
}