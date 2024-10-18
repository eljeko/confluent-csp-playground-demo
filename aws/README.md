# Acme VPC

This is a VPC used in the demo/test environent with a Confluent Cloud cluster with PL.

The `acme-vpc` dir contains all the scripts to setup the VPC with a public subnet and a private subnet.

# Setup

Create your terraform.tfstate

Export/login to aws in order to use terraform from cli

Run:
    terraform init
    terraform plan
    terraform apply