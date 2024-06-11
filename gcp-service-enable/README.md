# GCP Service Enable Module

This Terraform module enables specified services on a Google Cloud Platform (GCP) project.

## Usage

```hcl
module "gcp_service_enable" {
  source     = "path/to/your/module"
  project_id = "your-project-id"
  services   = [
    "compute.googleapis.com",
    "storage.googleapis.com",
    "bigquery.googleapis.com"
  ]
}
