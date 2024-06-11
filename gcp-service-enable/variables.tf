// variables.tf
variable "project_id" {
  description = "The ID of the project in which to enable the services."
  type        = string
}

variable "region" {
  description = "The region in which to manage resources."
  type        = string
  default     = "us-central1"
}

variable "services" {
  description = "The list of services to enable."
  type        = list(string)
}
