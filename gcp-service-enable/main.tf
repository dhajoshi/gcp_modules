// main.tf
provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_project_service" "service" {
  for_each = toset(var.services)

  project = var.project_id
  service = each.value
}
