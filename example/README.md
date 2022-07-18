<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

The following Modules are called:

### <a name="module_vpc"></a> [vpc](#module_vpc)

Source: ../../vpc

Version:

## Resources

No resources.

## Required Inputs

No required inputs.

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_config_dir"></a> [config_dir](#input_config_dir)

Description: n/a

Type: `string`

Default: `"./config"`

## Outputs

The following outputs are exported:

### <a name="output_info"></a> [info](#output_info)

Description:   
info = {  
  context = <context info>  
  vpc = <vpc info>  
  igw = <internet gateway info>
}
<!-- END_TF_DOCS -->
