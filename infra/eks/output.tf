output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

output "cluster_security_group_id" {
  value = aws_security_group.eks_cluster_security_group.id
}

output "node_group_name" {
  value = aws_eks_node_group.eks_node_group.node_group_name
}

output "node_instance_role_arn" {
  value = aws_iam_role.eks_node_role.arn
}

output "kms_key_id" {
  value = aws_kms_key.eks_secrets.id
}
