// modules/service-enable/main.tf
resource "google_project_service" "service" {
  project = var.project_id
  service = var.service
}
