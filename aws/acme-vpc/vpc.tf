provider "aws" {
  region = var.region
}

resource "aws_vpc" "acme-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name        = "Acme VPC"
    owner_email = var.owner_email
    owner_name  = var.owner_name
  }
}
