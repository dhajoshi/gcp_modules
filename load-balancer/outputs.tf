// modules/load-balancer/outputs.tf
output "backend_service_self_link" {
  value = google_compute_backend_service.default.self_link
}
