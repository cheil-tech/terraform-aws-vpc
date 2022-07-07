provider "aws" {
  region = local.region
}

terraform {
  backend "s3" {
    bucket = "dtdev-terraform-state"
    key    = "tf-modules/vpc/state"
    region = "ap-northeast-2"
  }
}

locals {
  # workspace = terraform.workspace
  config_file = "${var.config_dir}/${terraform.workspace}.yml"
  config      = yamldecode(file(local.config_file))

  context = local.config.context
  vpc     = local.config.vpc

  region = local.context.region

  vpc_vars = local.vpc

}

module "vpc" {
  source = "../../vpc"

  region_name   = local.context.region_name
  project_name  = local.context.project_name
  env_name      = local.context.env_name
  resource_name = local.context.resource_name

  vpc = local.vpc_vars
}
