// modules/service-account/outputs.tf
output "service_account_email" {
  value = google_service_account.service_account.email
}
