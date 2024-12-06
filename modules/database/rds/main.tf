resource "aws_db_instance" "rds_clients" {
  db_name = var.rds_instance_first_name
  engine = var.rds_engine
  engine_version = var.rds_engine_version
  identifier = var.project_name
  username = var.rds_user
  password = var.rds_pass
  instance_class = var.rds_instance_class
  storage_type = var.rds_storage_type
  allocated_storage = var.rds_min_storage
  max_allocated_storage = var.rds_max_storage
  multi_az = var.multi_az
  vpc_security_group_ids = ["${module.security_groups.rds.id}"]
  db_subnet_group_name = aws_db_subnet_group.rds.id
  apply_immediately = true
  skip_final_snapshot = true
  publicly_accessible          = false
  deletion_protection          = false
  performance_insights_enabled = true
  backup_retention_period      = var.rds_backup_retention
  backup_window                = var.rds_backup_window
  copy_tags_to_snapshot        = true
  delete_automated_backups     = true
}