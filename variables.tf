variable "resource_name" {type=string}
variable "region_name" {type=string}
variable "project_name" {type=string}
variable "env_name" {type=string}

variable "vpc_cidr" { type=string }
variable "dns_hostnames" { default = true }
variable "dns_support" { default = true }
