resource "aws_instance" "myfirst_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  tags = {
    Name = "myFirstInstance"
    OS   = "Linux"
  }
}
