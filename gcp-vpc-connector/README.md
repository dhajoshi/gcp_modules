# GCP VPC Connector Module

This Terraform module creates a VPC connector on Google Cloud Platform (GCP).

## Usage

```hcl
module "gcp_vpc_connector" {
  source           = "path/to/your/module"
  project_id       = "your-project-id"
  name             = "your-vpc-connector-name"
  network          = "your-network-name"
  ip_cidr_range    = "10.8.0.0/28"
  region           = "us-central1"
  min_throughput   = 200
  max_throughput   = 300
  machine_type     = "e2-micro"
  max_instances    = 3
  min_instances    = 2
  max_idle_instances = 1
}

Inputs
Name	Description	Type	Default	Required
project_id	The ID of the project in which to create resources	string	n/a	yes
region	The region in which to create resources	string	"us-central1"	no
name	The name of the VPC connector	string	n/a	yes
network	The network in which to create the VPC connector	string	n/a	yes
ip_cidr_range	The range of internal addresses	string	n/a	yes
min_throughput	Minimum throughput of the connector in Mbps	number	200	no
max_throughput	Maximum throughput of the connector in Mbps	number	300	no
machine_type	Machine type of instances in the connector	string	"e2-micro"	no
max_instances	Maximum number of instances in the connector	number	3	no
min_instances	Minimum number of instances in the connector	number	2	no
max_idle_instances	Maximum number of instances in the connector which can be idle	number	1	no
Outputs
Name	Description
vpc_connector_name	The name of the VPC connector
vpc_connector_region	The region of the VPC connector
vpc_connector_ip_cidr_range	The IP CIDR range of the VPC connector