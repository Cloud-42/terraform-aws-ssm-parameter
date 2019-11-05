output "arn" {
  value = aws_ssm_parameter.parameter.arn
}

output "value" {
  value = aws_ssm_parameter.parameter.value
}

#
# TF v12 
# https://www.hashicorp.com/blog/terraform-0-12-rich-value-types/
# Entire objects can now be exported as outputs
#

output "parameter" {
  value = aws_ssm_parameter.parameter
}

