output "vpc_id" {
  value       = try(aws_vpc.this[0].id, "")
}
output "name_prefix" {
  value = local.name_tag_prefix
}
output "vpc_cidr" {
  value       = var.vpc_cidr
}
output "igw_id" {
  value = aws_internet_gateway.this.id
}