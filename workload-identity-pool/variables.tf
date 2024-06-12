// modules/workload-identity-pool/variables.tf
variable "provider" {
  description = "The provider of the identity pool."
  type        = string
}

variable "name" {
  description = "The name of the identity pool."
  type        = string
}

variable "display_name" {
  description = "The display name of the identity pool."
  type        = string
}
