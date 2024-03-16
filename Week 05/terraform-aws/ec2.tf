# resource block defines a resource that Terraform will manage. In this case, an AWS EC2 instance.

resource "aws_instance" "app_server" {     # "aws_instance" is the type of resource, and "app_server" is the name used to refer to this resource within the Terraform configuration.
  ami           = "ami-830c94e3"         # The Amazon Machine Image (AMI) ID that the EC2 instance will be based on.
  instance_type = "t2.micro"            # The type of the EC2 instance, which determines the size, memory, and CPU capabilities. Here "t2.micro" is specified.
}

# Overview:
# This section of the Terraform configuration defines an AWS EC2 instance with the specified AMI and instance type.
# The resource is named "app_server" for reference within the Terraform project.
# "ami-830c94e3" is an example of an AMI ID, which needs to be chosen based on the desired OS and configuration.
# "t2.micro" is a cost-effective instance type suitable for small workloads and is eligible for the AWS free tier.
