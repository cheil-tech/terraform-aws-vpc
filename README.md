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
- [aws_internet_gateway.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/internet_gateway) (data source)
- [aws_vpc.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) (data source)

## Required Inputs

The following input variables are required:

### <a name="input_env_name"></a> [env_name](#input_env_name)

Description: Name of environment (QA/STG/PRD/...)

Type: `string`

### <a name="input_project_name"></a> [project_name](#input_project_name)

Description: Name of project

Type: `string`

### <a name="input_region_name"></a> [region_name](#input_region_name)

Description: Name of region which will be applied resources

Type: `string`

### <a name="input_resource_name"></a> [resource_name](#input_resource_name)

Description: Name of resource

Type: `string`

### <a name="input_vpc"></a> [vpc](#input_vpc)

Description: {value}({type}-{default}/[{constraints}])
```
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
```

Type: `any`

## Optional Inputs

No optional inputs.

## Outputs

The following outputs are exported:

### <a name="output_info"></a> [info](#output_info)

Description: n/a
<!-- END_TF_DOCS -->