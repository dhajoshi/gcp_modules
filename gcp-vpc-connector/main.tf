// modules/vpc-connector/main.tf
resource "google_vpc_access_connector" "vpc_connector" {
  name           = var.name
  region         = var.region
  network        = var.network
  ip_cidr_range  = var.ip_cidr_range
  min_throughput = var.min_throughput
  max_throughput = var.max_throughput
}
