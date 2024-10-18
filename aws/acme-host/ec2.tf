# add the below resource in the ec2.tf file to launch an ec2 instance
provider "aws" {
  region = var.region
}

resource "aws_instance" "acme-host" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.acme-host-instance-type
  subnet_id              = var.public_subnet_id
  key_name               = var.acme-key-name
  vpc_security_group_ids = [aws_security_group.terrafrom_sg.id]


  associate_public_ip_address = true

  root_block_device {
    volume_size = 50
  }


  tags = {
    Name        = "Acme acmehost"
    owner_email = var.owner_email
    sshUser     = "ubuntu"
    owner_name  = var.owner_name
  }
}

output "PublicIP" {
  value = aws_instance.acme-host.public_ip
}

