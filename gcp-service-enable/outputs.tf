// outputs.tf
output "enabled_services" {
  description = "The services that have been enabled."
  value       = [for service in google_project_service.service : service.service]
}
