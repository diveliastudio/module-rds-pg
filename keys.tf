resource "local_file" "rds_pg_address" {
  filename = "rds/${var.project_name}-${var.project_environment}-address.txt"
  content = aws_db_instance.db_rds_pg.address
}

resource "local_file" "rds_pg_username" {
  filename = "rds/${var.project_name}-${var.project_environment}-username.txt"
  content = aws_db_instance.db_rds_pg.username
}

resource "local_file" "rds_pg_password" {
  filename = "rds/${var.project_name}-${var.project_environment}-password.txt"
  content = random_password.master_password.result
}
