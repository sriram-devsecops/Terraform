resource "aws_instance" "roboshop" {
  for_each               = var.instances
  ami                    = var.ami_id
  instance_type          = each.value
  vpc_security_group_ids = [aws_security_group.allow-all.id]
  tags = {
    Name = each.key
  }
}