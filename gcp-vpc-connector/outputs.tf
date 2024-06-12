// modules/vpc-connector/outputs.tf
output "vpc_connector_name" {
  value = google_vpc_access_connector.vpc_connector.name
}
