// modules/service-account/main.tf
resource "google_service_account" "service_account" {
  account_id   = var.account_id
  display_name = var.display_name
}
