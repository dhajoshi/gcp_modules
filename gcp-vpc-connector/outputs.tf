// outputs.tf
output "vpc_connector_name" {
  description = "The name of the VPC connector."
  value       = google_vpc_access_connector.vpc_connector.name
}

output "vpc_connector_region" {
  description = "The region of the VPC connector."
  value       = google_vpc_access_connector.vpc_connector.region
}

output "vpc_connector_ip_cidr_range" {
  description = "The IP CIDR range of the VPC connector."
  value       = google_vpc_access_connector.vpc_connector.ip_cidr_range
}
