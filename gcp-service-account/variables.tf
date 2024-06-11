// variables.tf
variable "project_id" {
  description = "The ID of the project in which to manage service accounts."
  type        = string
}

variable "region" {
  description = "The region in which to manage resources."
  type        = string
  default     = "us-central1"
}

variable "service_accounts" {
  description = "The list of service accounts to manage."
  type = list(object({
    account_id   = string
    display_name = string
    description  = string
  }))
}

variable "service_account_keys" {
  description = "The list of service account keys to create."
  type = list(object({
    public_key_type = string
    key_algorithm   = string
  }))
}
