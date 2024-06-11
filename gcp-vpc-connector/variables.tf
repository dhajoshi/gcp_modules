// variables.tf
variable "project_id" {
  description = "The ID of the project in which to create the VPC connector."
  type        = string
}

variable "region" {
  description = "The region in which to create the VPC connector."
  type        = string
  default     = "us-central1"
}

variable "name" {
  description = "The name of the VPC connector."
  type        = string
}

variable "network" {
  description = "The network in which to create the VPC connector."
  type        = string
}

variable "ip_cidr_range" {
  description = "The range of internal addresses that follows RFC 4632 notation."
  type        = string
}

variable "min_throughput" {
  description = "Minimum throughput of the connector in Mbps."
  type        = number
  default     = 200
}

variable "max_throughput" {
  description = "Maximum throughput of the connector in Mbps."
  type        = number
  default     = 300
}

variable "machine_type" {
  description = "Machine type of instances in the connector."
  type        = string
  default     = "e2-micro"
}

variable "max_instances" {
  description = "Maximum number of instances in the connector."
  type        = number
  default     = 3
}

variable "min_instances" {
  description = "Minimum number of instances in the connector."
  type        = number
  default     = 2
}

variable "max_idle_instances" {
  description = "Maximum number of instances in the connector which can be idle."
  type        = number
  default     = 1
}
