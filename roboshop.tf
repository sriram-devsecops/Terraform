resource "aws_instance" "roboshop" {
  #count                  = 3
  for_each = var.instances
  ami      = var.ami_id
  #instance_type          = var.enviroment == "dev" ? "t2.micro" : "t3.small"
  instance_type          = each.value
  key_name               = "Devops"
  vpc_security_group_ids = [aws_security_group.allow-all.id]

  tags = {
    #Name = var.instances[count.index]
    Name = each.key
  }
}