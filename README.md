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

## Dependencies and Prerequisites
 * Terraform v0.12.18 or higher
 * AWS account

## Major versions
 * <B>v2</B> : Parameter is created. Lifecycle ignore changes applied. Once created changes are ignored and the value can be managed outside Terraform. 
 * <B>v3</B> : Parameter is created. Value is managed by Terraform. Any changes made outside of Terraform will be corrected.

## Variables
| Variable | Meaning |
| :------- | :----- |
| name | Name of the parameter |
| description | Description of the parameter |
| type | Parameter type. One of String, StringList or SecureString |
| value | The value of the parameter |
| tier | Tier of the parameter. Standard or Advanced |
| overwrite | If parameter already exists, whether to overwrite or not. default = false  |
| environment | Environment where parameter is built |
| contact | Contact tag |
| orchestration | Orchestration tag  |
| key_id | Set KMS key id used for encryption if SecureString is used. Not required for String type  |

## Outputs
 * parameter

## Usage

To import the module add the following to your TF file:
```
module "parameter" {
  source  = "Cloud-42/ssm-parameter/aws"
  version = "3.0.0"  # Or required version

  name          = "db_username"
  type          = "SecureString"
  value         = module.db.master_username
  description   = var.description 
  contact       = var.contact
  environment   = var.nonprd_environment
  orchestration = var.orchestration
  overwrite     = true
}
```
* To initialise the module run: terraform init
* To update the module run    : terraform get --update
* To see a plan of changes    : terraform plan
* To apply                    : terraform apply
* To automatically apply      : terraform apply --auto-approve

