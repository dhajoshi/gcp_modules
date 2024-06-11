# GCP Service Account Module

This Terraform module manages service accounts on a Google Cloud Platform (GCP) project.

## Usage

```hcl
module "gcp_service_account" {
  source     = "path/to/your/module"
  project_id = "your-project-id"
  service_accounts = [
    {
      account_id   = "my-service-account"
      display_name = "My Service Account"
      description  = "This is a service account for my application."
    }
  ]
  service_account_keys = [
    {
      public_key_type = "TYPE_X509_PEM_FILE"
      key_algorithm   = "KEY_ALG_RSA_2048"
    }
  ]
}
