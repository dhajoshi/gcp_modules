// modules/service-enable/variables.tf
variable "project_id" {
  description = "The ID of the project."
  type        = string
}

variable "service" {
  description = "The service to enable."
  type        = string
}
