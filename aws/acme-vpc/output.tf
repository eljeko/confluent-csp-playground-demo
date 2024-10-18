 

output "vpc-id" {
  description = "The IP of the bootcamp VPC"
  value = aws_vpc.acme-vpc.id
}

 
output "public-subnet-ids" {
  description = "Public subnet for all external-facing instances"
  value = aws_subnet.public_subnets.*.id
}

output "private-subnet-ids" {
  description = "Subnet AZ1 for creating Confluent Cluster"
  value = aws_subnet.private_subnets.*.id
}

output "availability-zones" {
  description = "Availability zones corresponding to the subnet ids"
  value = aws_subnet.private_subnets.*.availability_zone
}
