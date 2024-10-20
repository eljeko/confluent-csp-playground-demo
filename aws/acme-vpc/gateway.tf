resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.acme-vpc.id

  tags = {
    Name        = "Acme Project VPC IG"
    owner_email = var.owner_email
    owner_name  = var.owner_name
  }
}

resource "aws_route_table" "second_rt" {
  vpc_id = aws_vpc.acme-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name        = "Acme  2nd Route Table"
    owner_email = var.owner_email
    owner_name  = var.owner_name
  }
}

resource "aws_route_table_association" "public_subnet_asso" {
  count          = length(var.public_subnet_cidrs)
  subnet_id      = element(aws_subnet.public_subnets[*].id, count.index)
  route_table_id = aws_route_table.second_rt.id  
}
