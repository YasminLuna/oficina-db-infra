output "db_endpoint" { value = aws_db_instance.postgres.address }
output "db_secret_arn" { value = aws_secretsmanager_secret.db.arn }
output "db_security_group_id" { value = aws_security_group.db.id }
