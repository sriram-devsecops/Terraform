resource "aws_instance" "roboshop" {
  count                  = 4
  ami                    = var.ami_id
  instance_type          = var.environment == "dev" ? var.instance_type : "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow-all.id]
  tags = {
    Name = var.instances[count.index]
  }
}