locals {
  name_tag_prefix = "${var.project_name}-${var.env_name}"

  tags = {
    ProjectName  = var.project_name
    ResourceName = var.resource_name
    EnvName      = var.env_name
  }

  vpc_id = var.vpc.create ? aws_vpc.this[0].id : var.vpc.id
  igw_id = try(var.vpc.igw.create, false) ? aws_internet_gateway.this[0].id : data.aws_internet_gateway.internet_gateway_id
}

data "aws_vpc" "this" {
  id = local.vpc_id

  depends_on = [
    aws_vpc.this
  ]
}

resource "aws_vpc" "this" {
  count = var.vpc.create ? 1 : 0

  cidr_block           = var.vpc.info.cidr
  enable_dns_support   = try(var.vpc.info.dns_support, true)
  enable_dns_hostnames = try(var.vpc.info.dns_hostnames, true)

  tags = merge(
    {
      Name = "${local.name_tag_prefix}-vpc"
    },
    local.tags
  )
}

data "aws_internet_gateway" "this" {
  filter {
    name   = "attachment.vpc-id"
    values = [local.vpc_id]
  }

  depends_on = [
    aws_internet_gateway.this
  ]
}

resource "aws_internet_gateway" "this" {
  count = try(var.vpc.igw.create, false) ? 1 : 0
  
  vpc_id = local.vpc_id

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
