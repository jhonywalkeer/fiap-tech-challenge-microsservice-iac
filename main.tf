module "vpc" {
  source = "./modules/network/vpc"
  region = var.region
  project_name = var.project_name
  vpc_name = var.vpc_name
}

module "dynamo" {
  source      = "./modules/database/dynamo"
}

module "rds" {
  source      = "./modules/database/rds"
  project_name = var.project_name
}

module "eks" {
  source      = "./modules/management/eks"
  eks_cluster_name = var.eks_cluster_name
  private_subnets = module.vpc.private_subnets
}

module "iam" {
  source      = "./modules/security/iam"
  eks_cluster_name = var.eks_cluster_name
}

module "policies" {
  source      = "./modules/security/policies"
}

module "security_group" {
  source      = "./modules/security/security-groups"
  vpc_id = module.vpc.vpc_id
}

module "subnets" {
  source      = "./modules/security/subnets-groups"
  public_subnets = module.vpc.public_subnets
}