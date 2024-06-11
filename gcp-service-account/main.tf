// main.tf
provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_service_account" "service_account" {
  count        = length(var.service_accounts)
  account_id   = var.service_accounts[count.index].account_id
  display_name = var.service_accounts[count.index].display_name
  description  = var.service_accounts[count.index].description
}

resource "google_service_account_key" "service_account_key" {
  count        = length(var.service_account_keys)
  service_account_id = google_service_account.service_account[count.index].name
  public_key_type    = var.service_account_keys[count.index].public_key_type
  key_algorithm      = var.service_account_keys[count.index].key_algorithm
}
