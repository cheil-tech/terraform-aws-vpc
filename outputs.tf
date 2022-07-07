output "info" {
  value = {
    vpc = data.aws_vpc.this
    igw = data.aws_internet_gateway.this
  }
  description = <<EOT

vpc = data.aws_vpc.this
igw = data.aws_internet_gateway.this

  EOT
}
