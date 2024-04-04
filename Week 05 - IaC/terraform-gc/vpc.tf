# Declares the variable 'project_id' for use within the Terraform configuration.
# It will store the value for the Google Cloud project identifier.
variable "project_id" {
  description = "project id" # A human-readable description of the variable.
}

# Declares the variable 'region' for use within the Terraform configuration.
# It will store the value for the region where the Google Cloud resources will be provisioned.
variable "region" {
  description = "region" # A human-readable description of the variable.
}

# Configures the 'google' provider with the given project and region.
# The provider block is used to configure the named provider, in this case, 'google'.
provider "google" {
  project = var.project_id # Sets the project to the value of the 'project_id' variable.
  region  = var.region     # Sets the region to the value of the 'region' variable.
}

# Creates a Google Compute VPC (Virtual Private Cloud) network resource.
# VPCs provide networking for cloud resources.
resource "google_compute_network" "vpc" {
  name                    = "${var.project_id}-vpc" # Names the VPC using the project_id variable for uniqueness.
  auto_create_subnetworks = "false" # Disables the automatic creation of subnetworks. This is important for custom network planning.
}

# Creates a Google Compute subnetwork resource within the previously defined VPC.
# Subnetworks define a range of IP addresses within the VPC.
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.project_id}-subnet" # Names the subnet using the project_id variable for uniqueness.
  region        = var.region                # Sets the region for the subnet, which must be the same as the VPC's region.
  network       = google_compute_network.vpc.name # Associates this subnet with the previously defined VPC.
  ip_cidr_range = "10.10.0.0/24"           # Defines the range of IP addresses for this subnet using CIDR notation.
}

# Overview:
# This Terraform configuration file is responsible for setting up networking resources in Google Cloud Platform (GCP).
# It defines variables for the project ID and region, configures the Google Cloud provider, and then declares resources
# for a custom VPC and subnet. The VPC does not automatically create subnetworks, which allows for custom network architecture,
# and the subnet is defined with a specific range of IP addresses.
