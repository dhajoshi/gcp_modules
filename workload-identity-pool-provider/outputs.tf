// modules/workload-identity-pool-provider/outputs.tf
output "identity_pool_provider_name" {
  value = google_iam_workload_identity_pool_provider.identity_pool_provider.name
}
