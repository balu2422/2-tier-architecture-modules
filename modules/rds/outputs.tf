output "rds_endpoint" {
  description = "RDS Endpoint"
  value       = aws_db_instance.default.endpoint
}

output "rds_instance_id" {
  description = "RDS instance ID"
  value       = aws_db_instance.default.id
}

output "rds_security_group_id" {
  description = "RDS Security Group ID"
  value       = aws_security_group.db_sg.id
}
