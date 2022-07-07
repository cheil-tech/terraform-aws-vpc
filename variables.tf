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

- Mandatory if starts with *
- [default|*]({type}-{default}:{constraint1}/{constraint2}/..)

```
  default = {
    create = *(bool)  # vpc create or not
    id = null(string)  # vpc_id if useing existing one
    info = { # vpc info for creation
      cidr = *(string)  # cidr for vpc
      dns_support = true(bool)
      dns_hostname = true(bool)
    }
    igw = {  # internet gateway information
      create = *(bool)  # create igw or not
      id = null(string)  # internet gateway id if willing to use existing one
    }
  }
```

EOD
}
