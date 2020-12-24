variable "name" {
  description = "Name of the parameter"
}
variable "description" {
  description = "Description of the parameter"
  default     = ""
}
variable "type" {
  description = "Type of the parameter. One of String, StringList or SecureString"
  default     = "SecureString"
}
variable "value" {
  description = "The value of the parameter"
}
variable "tier" {
  description = "Tier of the parameter. Standard or Advanced"
  default     = "Standard"
}
variable "overwrite" {
  description = "If parameter already exists, whether to overwrite or not"
  default     = "false"
}
variable "key_id" {
  description = "Set KMS key id used for encryption if SecureString is used. Not required for String type"
  default     = null
}
variable "tags" {
  description = "Tags map"
  type        = map(string)
  default     = {}
}
