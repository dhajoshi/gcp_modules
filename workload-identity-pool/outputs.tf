// modules/workload-identity-pool/outputs.tf
output "identity_pool_name" {
  value = google_iam_workload_identity_pool.identity_pool.name
}
