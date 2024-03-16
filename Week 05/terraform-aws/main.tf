# Terraform block specifies the Terraform settings, including required providers and versions.
terraform {
  # required_providers block specifies all the providers that are required by this configuration.
  required_providers {
    # aws provider block specifies the configuration for the AWS provider.
    aws = {
      source  = "hashicorp/aws" # The source location for the AWS provider, which is the HashiCorp registry.
      version = "~> 4.16" # The version of the AWS provider that is required, "~> 4.16" means any version in the 4.x range, but at least 4.16.
    }
  }

  # required_version specifies the minimum version of Terraform that is required for this configuration to work.
  required_version = ">= 1.2.0"
}

# provider block configures a specific provider, in this case AWS.
provider "aws" {
  region = "us-west-2" # Sets the region where AWS resources will be created. Here, it's set to "us-west-2".
}

# Overview:
# This Terraform configuration file is used to set up the AWS provider, one of Terraform's plugins for managing resources on AWS.
# It specifies the version of the AWS provider as well as the minimum Terraform version required to execute this configuration.
# Additionally, it configures the AWS provider to operate in the "us-west-2" region.
