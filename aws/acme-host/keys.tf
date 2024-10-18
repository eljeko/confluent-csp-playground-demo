resource "tls_private_key" "aws-key" {
  algorithm = "RSA"
  rsa_bits  = 4096

}

resource "aws_key_pair" "acme-key" {
  key_name   = var.acme-key-name
  public_key = tls_private_key.aws-key.public_key_openssh
  tags = {
    Name        = "Acme Key"
    owner_email = var.owner_email
    owner_name  = var.owner_name
  }
}

resource "local_file" "private_key" {
  content         = tls_private_key.aws-key.private_key_pem
  filename        = "acmehost.pem"
  file_permission = "0600"

}
