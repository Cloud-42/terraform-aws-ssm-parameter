resource "aws_ssm_parameter" "parameter" {
  name        = var.name
  description = var.description
  type        = var.type
  value       = var.value
  tier        = var.tier
  overwrite   = var.overwrite

  lifecycle {
   ignore_changes = [
      # Ignore changes to value 
      value,
    ]
  }


  tags = {
    Name          = "${var.environment}.${var.name}"
    Environment   = var.environment
    Description   = var.description
    Contact       = var.contact
    Orchestration = var.orchestration
  }
}
