resource "aws_security_group" "security_group" {
  name = "${var.project_name}-${var.project_environment}-RDS-SG"
  vpc_id = data.aws_vpc.default_vpc.id
}

resource "aws_security_group_rule" "security_group_rule" {
  type              = "ingress"
  from_port         = 5432
  to_port           = 5432
  protocol          = "tcp"
  security_group_id = aws_security_group.security_group.id
  source_security_group_id = var.source_security_group_id
}

