output "vpc-id" {
  description = "The IP of the bootcamp VPC"
  value = aws_vpc.vpc.id
}
