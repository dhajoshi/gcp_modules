// modules/workload-identity-pool/main.tf
resource "google_iam_workload_identity_pool" "identity_pool" {
  provider = var.provider
  name     = var.name
  display_name = var.display_name
}
