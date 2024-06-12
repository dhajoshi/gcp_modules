// modules/iam-binding/outputs.tf
output "role" {
  value = google_project_iam_binding.binding.role
}

output "members" {
  value = google_project_iam_binding.binding.members
}
