resource "aws_security_group" "terrafrom_sg" {
  name        = "Acme allow_ssh"
  description = "Acne sg for to allow ssh"
  vpc_id      = var.vpc-id

  tags = {
    Name = "Acme Terraform_project_sg"
    owner_email = var.owner_email
    owner_name  = var.owner_name
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.terrafrom_sg.id
  cidr_ipv4         = local.my_ip
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}


resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.terrafrom_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}