# Output values are like return values for a Terraform module. They can be used to return information
# about the resources created by the module.

# The output "region" is declared to return the value of the "region" variable.
output "region" {
  value       = var.region # Specifies that the output will be whatever value is assigned to the "region" variable.
  description = "GCloud Region" # A human-readable description of the output value.
}

# The output "project_id" is declared to return the value of the "project_id" variable.
output "project_id" {
  value       = var.project_id # Specifies that the output will be whatever value is assigned to the "project_id" variable.
  description = "GCloud Project ID" # A human-readable description of the output value.
}

# The output "kubernetes_cluster_name" is declared to return the name of the primary Google Kubernetes Engine (GKE) cluster.
output "kubernetes_cluster_name" {
  value       = google_container_cluster.primary.name # Extracts the name of the primary cluster from the Google provider resource.
  description = "GKE Cluster Name" # A human-readable description of the output value.
}

# The output "kubernetes_cluster_host" is declared to return the endpoint of the primary GKE cluster.
output "kubernetes_cluster_host" {
  value       = google_container_cluster.primary.endpoint # Extracts the endpoint of the primary cluster from the Google provider resource.
  description = "GKE Cluster Host" # A human-readable description of the output value.
}

# Overview:
# This Terraform configuration file defines output values for a module provisioning GCP resources.
# It includes the region, project ID, GKE cluster name, and GKE cluster host, providing essential
# connection details that can be used by other Terraform modules or in external programs.