output "aws_public_subnet" {
  value = aws_subnet.public_cyderes-sahil-gh_subnet.*.id
}

output "vpc_id" {
  value = aws_vpc.cyderes-sahil-gh.id
}