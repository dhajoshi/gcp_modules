// modules/iam-binding/variables.tf
variable "project_id" {
  description = "The ID of the GCP project."
  type        = string
}

variable "role" {
  description = "The role that should be applied."
  type        = string
}

variable "members" {
  description = "The members to whom the role should be applied."
  type        = list(string)
}
