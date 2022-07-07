variable "resource_name" {
  description = "Name of resource"
  type=string
}
variable "region_name" {
  description = "Name of region which will be applied resources"
  type=string
}
variable "project_name" {
  description = "Name of project"
  type=string
}
variable "env_name" {
  description = "Name of environment (QA/STG/PRD/...)"
  type=string
}

variable "vpc" {
  description = <<EOD
  default = {
    create = bool
    id = null
    info = {
      cidr = string
      dns_support = null
      dns_hostname = null
    }
    igw = {
      create = true
      id = null
    }
  }
EOD
}
