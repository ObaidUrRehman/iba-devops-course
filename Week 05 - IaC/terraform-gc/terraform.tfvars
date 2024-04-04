# The 'terraform.tfvars' file is where you can set values for your variables 
# that Terraform will automatically load during operations.

# Sets the 'project_id' variable for use within your Terraform configuration, 
# which should correspond to your Google Cloud project identifier.

project_id = "vocal-orbit-412510" 

# Sets the 'region' variable to determine the default region for provisioning 
# Google Cloud resources within your Terraform configuration.

region     = "us-central1" 

# Overview:
# The 'project_id' and 'region' variables are set with values for deploying resources 
# in Google Cloud Platform (GCP), with 'project_id' identifying your specific GCP project 
# and 'region' specifying the location for your resources.

# About '.tfvars' files:
# The '.tfvars' file extension stands for "Terraform variables". Terraform automatically loads
# variables from files named exactly 'terraform.tfvars' or any files with names ending in '.auto.tfvars'.
# These files are used to specify the values of variables which configure the Terraform environment.
# It's a common practice to use 'terraform.tfvars' for environment-specific values to keep them
# separate from the main configuration, thus making the setup more modular and manageable.
