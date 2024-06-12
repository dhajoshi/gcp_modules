// modules/load-balancer/variables.tf
variable "name" {
  description = "The name of the load balancer."
  type        = string
}

variable "zone" {
  description = "The zone for the instance group."
  type        = string
}

variable "instances" {
  description = "List of instances for the instance group."
  type        = list(string)
}
