resource "aws_eks_cluster" "eks_cluster" {
  name     = var.eks_cluster_name
  role_arn = aws_iam_role.eks_master_role.arn
  version  = var.kubernetes_version

  vpc_config {
    subnet_ids = var.private_subnets
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_cluster,
    aws_iam_role_policy_attachment.eks_cluster_service
  ]
}

resource "aws_eks_node_group" "eks_node_group" {

  cluster_name    = var.eks_cluster_name
  node_group_name = format("%s-node-group", var.eks_cluster_name)
  node_role_arn   = aws_iam_role.eks_node_role.arn
  subnet_ids      = var.private_subnets

  scaling_config {
    desired_size = var.eks_scalling_config["desired_size"]
    max_size     = var.eks_scalling_config["max_size"]
    min_size     = var.eks_scalling_config["min_size"]
  }

  depends_on = [
    aws_eks_cluster.eks_cluster,
    aws_iam_role_policy_attachment.eks_AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.eks_AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.eks_AmazonEC2ContainerRegistryReadOnly
  ]
}