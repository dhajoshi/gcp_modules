// modules/iam-binding/main.tf
resource "google_project_iam_binding" "binding" {
  project = var.project_id
  role    = var.role

  members = var.members
}
