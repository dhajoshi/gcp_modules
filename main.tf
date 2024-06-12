provider "google" {
  project = "your-project-id"
  region  = "us-central1"
}

locals {
  service_accounts = [
    {
      account_id   = "service-account-1"
      display_name = "Service Account 1"
    },
    {
      account_id   = "service-account-2"
      display_name = "Service Account 2"
    }
  ]

  services = [
    "compute.googleapis.com",
    "storage.googleapis.com"
  ]

   iam_bindings = [
    {
      role    = "roles/viewer"
      members = ["user:example1@example.com", "user:example2@example.com"]
    },
    {
      role    = "roles/editor"
      members = ["group:editors@example.com"]
    }
  ]
}

module "service_accounts" {
  source       = "./gcp_modules/gcp-service-account"

  for_each = { for sa in local.service_accounts : sa.account_id => sa }

  account_id   = each.value.account_id
  display_name = each.value.display_name
}

module "services" {
  source     = "./gcp_modules/gcp-service-enable"

  for_each = toset(local.services)

  project_id = "your-project-id"
  service    = each.key
}

module "vpc_connector" {
  source        = "./gcp_modules/gcp-vpc-connector"
  name          = "my-vpc-connector"
  region        = "us-central1"
  network       = "default"
  ip_cidr_range = "10.8.0.0/28"
  min_throughput = 200
  max_throughput = 300
}

module "load_balancer" {
  source    = "./gcp_modules/load-balancer"
  name      = "my-load-balancer"
  zone      = "us-central1-a"
  instances = ["instance-1", "instance-2"]
}

module "workload_identity_pool" {
  source      = "./gcp_modules/workload-identity-pool"
  name        = "my-identity-pool"
  display_name = "My Identity Pool"
  provider    = "google"
}

module "workload_identity_pool_provider" {
  source                  = "./gcp_modules/workload-identity-pool-provider"
  name                    = "my-identity-pool-provider"
  workload_identity_pool_id = module.workload_identity_pool.identity_pool_name
  display_name            = "My Identity Pool Provider"
  issuer_uri              = "https://accounts.google.com"
}

module "iam_bindings" {
  source = "./modules/iam-binding"

  for_each = { for binding in local.iam_bindings : binding.role => binding }

  project_id = "your-project-id"
  role       = each.value.role
  members    = each.value.members
}