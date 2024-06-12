// modules/workload-identity-pool-provider/main.tf
resource "google_iam_workload_identity_pool_provider" "identity_pool_provider" {
  workload_identity_pool_id = var.workload_identity_pool_id
  workload_identity_pool_provider_id = var.workload_identity_pool_provider_id
  display_name             = var.display_name

  oidc {
    issuer_uri = var.issuer_uri
  }
}
