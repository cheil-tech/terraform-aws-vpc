locals {
  # max_subnet_length = max(
  #     length(var.public_subnets),
  #     length(var.private_subnets),
  #     length(var.database_subnets),
  # )

  # Use `local.vpc_id` to give a hint to Terraform that subnets should be deleted before secondary CIDR blocks can be free!
  vpc_id     = try(aws_vpc.this[0].id, "")
  create_vpc = var.create_vpc

  name_tag_prefix = "${var.project_name}-${var.env_name}"

  tags = {
    ProjectName  = var.project_name
    ResourceName = var.resource_name
    EnvName      = var.env_name
  }
}

resource "aws_vpc" "this" {
  count = var.create_vpc ? 1 : 0

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
  vpc_id = local.vpc_id

  tags = merge(
    {
      Name = "${local.name_tag_prefix}-igw"
    },
    local.tags
  )
}

### ACL

### VPC endpoint

### VPC peering
