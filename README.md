<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

The following providers are used by this module:

- <a name="provider_aws"></a> [aws](#provider_aws)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [aws_internet_gateway.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) (resource)
- [aws_vpc.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) (resource)

## Required Inputs

The following input variables are required:

### <a name="input_env_name"></a> [env_name](#input_env_name)

Description: n/a

Type: `string`

### <a name="input_project_name"></a> [project_name](#input_project_name)

Description: n/a

Type: `string`

### <a name="input_region_name"></a> [region_name](#input_region_name)

Description: n/a

Type: `string`

### <a name="input_resource_name"></a> [resource_name](#input_resource_name)

Description: n/a

Type: `string`

### <a name="input_vpc_cidr"></a> [vpc_cidr](#input_vpc_cidr)

Description: n/a

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_dns_hostnames"></a> [dns_hostnames](#input_dns_hostnames)

Description: n/a

Type: `bool`

Default: `true`

### <a name="input_dns_support"></a> [dns_support](#input_dns_support)

Description: n/a

Type: `bool`

Default: `true`

## Outputs

The following outputs are exported:

### <a name="output_info"></a> [info](#output_info)

Description: n/a
<!-- END_TF_DOCS -->