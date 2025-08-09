resource "aws_route53_record" "rt53" {
  for_each = aws_instance.roboshop
  zone_id  = var.zone_id
  #name     = "${var.instances[count.index]}.${var.domain_name}"
  name     = "${each.key}.${var.domain_name}"
  #name = each.key == "frontend" ? "${var.domain_name}" : "${each.key}.${var.domain_name}"
  type = "A"
  ttl  = 1
  #records = [aws_instance.roboshop[count.index].private_ip]
  records = [each.value.private_ip]
}