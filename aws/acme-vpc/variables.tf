variable "region" {
  type = string
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private Subnet CIDR values"
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

locals {
  region_name = var.region
}


variable "availability-zones" {
  description = "The availability zones for this region"
  type        = list(string)
}

variable "public-availability-zone" {
  description = "The availability zone for the public subnet"
  type        = list(string)
}

variable "owner_email" {
  type = string
}

variable "owner_name" {
  type = string
}
