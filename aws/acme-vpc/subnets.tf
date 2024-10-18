resource "aws_subnet" "public_subnets" {
  count             = length(var.public_subnet_cidrs)
  vpc_id            = aws_vpc.acme-vpc.id
  cidr_block        = element(var.public_subnet_cidrs, count.index)
  availability_zone = element(var.public-availability-zone, count.index)

  tags = {
    Name        = "Acme Public Subnet ${count.index + 1}"
    owner_email = var.owner_email
    owner_name  = var.owner_name
  }
}

resource "aws_subnet" "private_subnets" {
  count             = length(var.private_subnet_cidrs)
  vpc_id            = aws_vpc.acme-vpc.id
  cidr_block        = element(var.private_subnet_cidrs, count.index)
  availability_zone = element(var.availability-zones, count.index)

  tags = {
    Name        = "Acme private Subnet ${count.index + 1}"
    owner_email = var.owner_email
    owner_name  = var.owner_name
  }
}
