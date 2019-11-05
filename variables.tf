variable "name" {
  description = "Name of the parameter"
}
variable "description" {
  description = "Description of the parameter"
}
variable "type" {
  description = "Type of the parameter. One of String, StringList or SecureString"
  default     = "SecureString"
}
variable "value" {
  description = "The value of the parameter"
  default     = "updateme"
}
variable "tier" {
  description = "Tier of the parameter. Standard or Advanced"
  default     = "Standard"
}
variable "overwrite" {
  description = "If parameter already exists, whether to overwrite or not"
  default     = "false"
}
variable "environment" {
  description = "Environment where parameter is built."
}
variable "contact" {
  description = "Contact tag"
}
variable "orchestration" {
  description = "Orchestration tag"
}

