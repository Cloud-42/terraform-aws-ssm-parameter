resource "aws_ssm_parameter" "parameter" {
  name        = var.name
  description = var.description
  type        = var.type
  value       = var.value
  tier        = var.tier
  overwrite   = var.overwrite
  key_id      = var.key_id

  tags = {
    Name          = "${var.environment}.${var.name}"
    Environment   = var.environment
    Description   = var.description
    Contact       = var.contact
    Orchestration = var.orchestration
  }
}
