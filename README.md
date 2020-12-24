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

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.5 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | Description of the parameter | `string` | `""` | no |
| key\_id | Set KMS key id used for encryption if SecureString is used. Not required for String type | `any` | `null` | no |
| name | Name of the parameter | `any` | n/a | yes |
| overwrite | If parameter already exists, whether to overwrite or not | `string` | `"false"` | no |
| tags | Tags map | `map(string)` | `{}` | no |
| tier | Tier of the parameter. Standard or Advanced | `string` | `"Standard"` | no |
| type | Type of the parameter. One of String, StringList or SecureString | `string` | `"SecureString"` | no |
| value | The value of the parameter | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| parameter | Parameter object |

## Usage

To import the module add the following to your TF file:
```
module "parameter" {
  source  = "Cloud-42/ssm-parameter/aws"
  version = "4.0.0"  # Or required version

  name          = ".env.production"
  type          = "SecureString"
  value         = file("${path.module}/.env.production")
  overwrite     = true
  tags          = var.tags
}
```

* To initialise the module run: terraform init
* To update the module run    : terraform get --update
* To see a plan of changes    : terraform plan
* To apply                    : terraform apply
* To automatically apply      : terraform apply --auto-approve

