resource "aws_ssm_parameter" "parameter" {
  name        = var.name
  description = var.description != "" ? var.description : null
  type        = var.type
  value       = var.value
  tier        = var.tier
  overwrite   = var.overwrite
  key_id      = var.key_id != null ? var.key_id : null

  tags = var.tags
  lifecycle {
    ignore_changes = [
      # Ignore changes to value
      value,
    ]
  }
}
