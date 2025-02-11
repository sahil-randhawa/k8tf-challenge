output "eks_cluster_id" {
  description = "EKS Cluster ID"
  value = module.eks.eks_cluster_id
}

output "eks_cluster_endpoint" {
  description = "Endpoint for EKS Control Plane"
  value = module.eks.eks_cluster_endpoint
}

output "cluster_name" {
  description = "Name of the EKS Cluster"
  value = module.eks.cluster_name
}