variable "my-ip" {
  description = "IP Address from which to get access to the public subnet in CIDR format (usually /32)"
  type = string
  default = ""
}

variable "vpc-id" {
  description = "The destination VPC where the instance is created"
  type = string
  default = ""
}

variable "owner_email" {
  type = string
}

variable "owner_name" {
  type = string
}

variable "region" {
  default = "us-east-1"
}
variable "public_subnet_id" {
  default = ""
}

variable "acme-host-instance-type" {
  description = "AWS instance type used for dockerhost instance"
  default = "t3.xlarge"
}

variable "USER" {
  default = "ubuntu"
}

variable "acme-key-name" {
  default = "acme-key"
}