resource "aws_security_group" "security_group" {
  name = "${var.project_name}-${var.project_environment}-RDS-SG"
  vpc_id = data.aws_vpc.default_vpc.id
ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = var.sg_cidr_blocks
  }
}
