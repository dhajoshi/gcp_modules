// modules/workload-identity-pool-provider/variables.tf
variable "workload_identity_pool_id" {
  description = "The ID of the workload identity pool."
  type        = string
}

variable "workload_identity_pool_provider_id" {
  description = "The ID of the workload identity pool provider."
  type        = string
}

variable "display_name" {
  description = "The display name of the identity pool provider."
  type        = string
}

variable "issuer_uri" {
  description = "The issuer URI for the OIDC provider."
  type        = string
}
