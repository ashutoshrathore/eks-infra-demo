module "vpc" {
  source               = "./infra/vpc"
  vpc_cidr             = var.vpc_cidr
  public_subnet_count  = var.public_subnet_count
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_count = var.private_subnet_count
  private_subnet_cidrs = var.private_subnet_cidrs
  tags                 = var.tags
}

module "security_groups" {
  depends_on          = [module.vpc]
  source              = "./infra/security"
  vpc_id              = module.vpc.vpc_id
  allowed_cidr_blocks = var.allowed_cidr_blocks
  tags                = var.tags
}

module "eks" {
  depends_on              = [module.vpc, module.security_groups]
  source                  = "./infra/eks"
  cluster_name            = var.cluster_name
  cluster_k8s_version     = var.cluster_k8s_version
  node_group_name         = var.node_group_name
  desired_capacity        = var.desired_capacity
  max_size                = var.max_size
  min_size                = var.min_size
  subnet_ids              = concat(module.vpc.public_subnet_ids, module.vpc.private_subnet_ids)
  vpc_id                  = module.vpc.vpc_id
  ami_type                = var.ami_type
  node_image_version      = var.node_image_version
  node_kubernetes_version = var.node_kubernetes_version
  tags                    = var.tags
}