// outputs.tf
output "service_account_emails" {
  description = "The emails of the service accounts that have been created."
  value       = [for sa in google_service_account.service_account : sa.email]
}

output "service_account_keys" {
  description = "The private keys of the service accounts that have been created."
  value       = [for key in google_service_account_key.service_account_key : key.private_key]
}
