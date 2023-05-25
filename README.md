<p align="center">
  <a href="https://www.cloud42.io/" target="_blank" rel="Homepage"><a id=“contactform”>
  <img width="200" height="200" src="https://www.cloud42.io/wp-content/uploads/2020/01/transparent_small.png">
  </a>
</p>

---

<p align="center">Need help with your Cloud builds <a href="https://www.cloud42.io/contact/" target="_blank" rel="ContactUS"> GET IN TOUCH</a>.</p>

---
# terraform-aws-ssm-parameter
Creates a SSM parameter.

Upon launching the following resources will be created:

 * SSM Parameter

## Major versions
 * <B>v2</B> : Parameter is created. Lifecycle ignore changes applied. Once created changes are ignored and the value can be managed outside Terraform. 
 * <B>v3</B> : Parameter is created. Value is managed by Terraform. Any changes made outside of Terraform will be corrected.

 * <B>v4</B> : Parameter is created. Value is managed by Terraform. Any changes made outside of Terraform will be corrected. Tags passed in as a map.
 * <B>v5</B> : Parameter is created. Lifecycle ignore changes applied. Once created changes are ignored and the value can be managed outside Terraform. Tags passed in as a map.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.6 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws\_ssm\_parameter.parameter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the parameter | `string` | `""` | no |
| <a name="input_key_id"></a> [key\_id](#input\_key\_id) | Set KMS key id used for encryption if SecureString is used. Not required for String type | `any` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the parameter | `any` | n/a | yes |
| <a name="input_overwrite"></a> [overwrite](#input\_overwrite) | If parameter already exists, whether to overwrite or not | `string` | `"false"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags map | `map(string)` | `{}` | no |
| <a name="input_tier"></a> [tier](#input\_tier) | Tier of the parameter. Standard or Advanced | `string` | `"Standard"` | no |
| <a name="input_type"></a> [type](#input\_type) | Type of the parameter. One of String, StringList or SecureString | `string` | `"SecureString"` | no |
| <a name="input_value"></a> [value](#input\_value) | The value of the parameter | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_parameter"></a> [parameter](#output\_parameter) | Parameter object |
