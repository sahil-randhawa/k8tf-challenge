output "endpoint" {
  value = aws_eks_cluster.cyderes-sahil-gh.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.cyderes-sahil-gh.certificate_authority[0].data
}
output "cluster_id" {
  value = aws_eks_cluster.cyderes-sahil-gh.id
}
output "cluster_endpoint" {
  value = aws_eks_cluster.cyderes-sahil-gh.endpoint
}
output "cluster_name" {
  value = aws_eks_cluster.cyderes-sahil-gh.name
}