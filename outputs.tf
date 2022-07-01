output "info" {
  value = {
    id     = try(aws_vpc.this.id, "")
    cidr   = try(aws_vpc.this.cidr_block, "")
    igw_id = try(aws_internet_gateway.this.id, "")
  }
}
