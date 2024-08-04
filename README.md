# terraform-module-template

Repository template for Terraform module.

> If you'd like to check module metadata usage in detail you can do it [here](./examples-module-metadata/README.md). Remove this quote and whole directory before publishing your module.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_subnet.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_prefixes"></a> [address\_prefixes](#input\_address\_prefixes) | The address prefixes for the subnet. | `list(string)` | n/a | yes |
| <a name="input_default_outbound_access_enabled"></a> [default\_outbound\_access\_enabled](#input\_default\_outbound\_access\_enabled) | Whether to allow outbound traffic to the internet. | `bool` | `true` | no |
| <a name="input_delegations"></a> [delegations](#input\_delegations) | The service delegations for the subnet. | <pre>list(object({<br>    name            = string<br>    service_name    = string<br>    service_actions = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_metadata"></a> [metadata](#input\_metadata) | Module metadata object to give user possibility to override default module values. | <pre>object({<br>    default_tags             = optional(map(string), {})<br>    resource_timeouts        = optional(map(map(string)), {})<br>    validator_error_messages = optional(map(string), {})<br>    validator_expressions    = optional(map(string), {})<br>  })</pre> | `{}` | no |
| <a name="input_private_endpoint_network_policies"></a> [private\_endpoint\_network\_policies](#input\_private\_endpoint\_network\_policies) | Whether to enable network policies for the private endpoint. | `string` | `"Disabled"` | no |
| <a name="input_private_link_service_network_policies_enabled"></a> [private\_link\_service\_network\_policies\_enabled](#input\_private\_link\_service\_network\_policies\_enabled) | Whether to enable network policies for the private link service. | `bool` | `false` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group. | `string` | n/a | yes |
| <a name="input_service_endpoints"></a> [service\_endpoints](#input\_service\_endpoints) | The service endpoints to associate with the subnet. | `list(string)` | `[]` | no |
| <a name="input_service_endpoints_policy_ids"></a> [service\_endpoints\_policy\_ids](#input\_service\_endpoints\_policy\_ids) | The service endpoints policies ids to apply to the subnet. | `list(string)` | `[]` | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | The name of the subnet. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Key value pairs of custom tags to be applied to the module resources. | `map(string)` | `{}` | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | The name of the virtual network. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Usage

> ADD content about usage