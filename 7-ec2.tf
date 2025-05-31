resource "aws_instance" "Terra-Ec2" {
  ami                         = "ami-084568db4383264d4"
  instance_type               = "t2.micro"
  availability_zone           = "us-east-1a"
  key_name                    = "Rayeez_AWS"
  subnet_id                   = aws_subnet.Pub-Sub-Terra.id
  vpc_security_group_ids      = ["${aws_security_group.SG-Terra.id}"]
  associate_public_ip_address = true
  tags = {
    Name  = "Server-1"
    Env   = "Development"
    Owner = "Rayeez"
  }
}

