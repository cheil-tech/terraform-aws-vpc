locals {
  name_tag_prefix = "${var.project_name}-${var.env_name}"

  tags = {
    ProjectName  = var.project_name
    ResourceName = var.resource_name
    EnvName      = var.env_name
  }
}

resource "aws_vpc" "this" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = var.dns_support
  enable_dns_hostnames = var.dns_hostnames

  tags = merge(
    {
      Name = "${local.name_tag_prefix}-vpc"
    },
    local.tags
  )
}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id

  tags = merge(
    {
      Name = "${local.name_tag_prefix}-igw"
    },
    local.tags
  )

  depends_on = [
    aws_vpc.this
  ]
}

### ACL

### VPC endpoint

### VPC peering
