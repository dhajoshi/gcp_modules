// modules/vpc-connector/variables.tf
variable "name" {
  description = "The name of the VPC connector."
  type        = string
}

variable "region" {
  description = "The region of the VPC connector."
  type        = string
}

variable "network" {
  description = "The network of the VPC connector."
  type        = string
}

variable "ip_cidr_range" {
  description = "The IP CIDR range of the VPC connector."
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
