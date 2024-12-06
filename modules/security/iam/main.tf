resource "aws_iam_role" "eks_master_role" {
  description = "EKS cluster master IAM role"
  name = format("%s-master-role", var.eks_cluster_name)
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "eks.amazonaws.com"
      }
    }]
  })
}