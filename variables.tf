variable "resource_name" {type=string}
variable "region_name" {type=string}
variable "project_name" {type=string}
variable "env_name" {type=string}

variable "vpc" {
  # default = {
  #   create = bool
  #   id = null
  #   info = {
  #     cidr = string
  #     dns_support = null
  #     dns_hostname = null
  #   }
  #   igw = {
  #     create = true
  #     id = null
  #   }
  # }
}
