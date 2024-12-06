variable "eks_cluster_name" {
  type        = string
  description = "The name of the EKS cluster"
}

variable "kubernetes_version" {
  type        = string
  description = "The version of Kubernetes to use for the EKS cluster"
  default     = "1.29"
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
}

variable "eks_scalling_config" {
  description = "The scaling configuration of the EKS node group"
  type        = map(number)
  default     = {
    desired_size = 7
    max_size     = 10
    min_size     = 1
  }
  
}