output "info" {
  value = {
    vpc = data.aws_vpc.this
    igw = data.aws_internet_gateway.this
  }
}
