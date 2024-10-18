# Acme VPC

This is a VPC used in the demo/test environent with a Confluent Cloud cluster with PL.

The `acme-vpc` dir contains all the scripts to setup the VPC with a public subnet and a private subnet.

# Create the VPC

Go into `acme-vpc` dir

Create your terraform.tfvars

Export/login to aws in order to use terraform from cli

Run:

    terraform init

    terraform plan

    terraform apply

Take note of the output, if you want to create an EC2 instance you will need:

* VPC id
* one public-subnet-id

# Create an EC2 instance in the 

Go into `acme-host` dir

Create your terraform.tfvars and use the output from acme-vpc

Export/login to aws in order to use terraform from cli

Run:

    terraform init

    terraform plan

    terraform apply


After creation take note of the machine ip and then you can login:

    ssh -i acmehost.pem ubuntu@<EC2_public_ip>