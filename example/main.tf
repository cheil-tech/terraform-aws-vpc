provider "aws" {
  region = local.region
}

terraform {
  backend "s3" {
    bucket = "dtdev-terraform-state"
    key    = "tf-modules/vpc.state"
    region = "ap-northeast-2"
  }
}

locals {
  config_file = "${var.config_dir}/${terraform.workspace}.yml"
  config_org  = yamldecode(file(local.config_file))
  context     = local.config_org.context

  vars = merge(
    local.config_org
  )

  config = yamldecode(templatefile(local.config_file, local.vars))

  vpc      = local.config.vpc
  region   = local.context.region
}

module "vpc" {
  source = "../../vpc"

  region_name   = local.context.region_name
  project_name  = local.context.project_name
  env_name      = local.context.env_name
  resource_name = local.config.resource_name

  vpc = local.config.vpc
}
