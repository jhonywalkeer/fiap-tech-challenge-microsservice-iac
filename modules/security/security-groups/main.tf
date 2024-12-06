resource "aws_security_group" "rds" {
  name   = var.security_group_name
  vpc_id = var.vpc_id

  ingress {
    from_port   = var.security_group_port
    to_port     = var.security_group_port
    protocol    = security_group_protocol
    cidr_blocks = [var.security_group_CIDR]
  }

  egress {
    from_port   = var.security_group_port
    to_port     = var.security_group_port
    protocol    = security_group_protocol
    cidr_blocks = [var.security_group_CIDR]
  }
}

resource "aws_security_group_rule" "eks_sg_ingress_rule" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  security_group_id = aws_eks_cluster.eks_cluster.vpc_config[0].cluster_security_group_id
  type              = "ingress"
}