variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "ami id of the instance"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "environment" {
  default = "dev"
}

variable "ec2_tags" {
  default = {
    Name    = "roboshop"
    purpose = "testing"
  }
}

variable "sg_name" {
  default = "var-file-Allow-all"
}

variable "sg_desc" {
  default = "Allow-all traffic"
}

variable "to_port" {
  type    = number
  default = 0
}
variable "from_port" {
  type    = number
  default = 0
}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  default = {
    Name = "Allow-all"
  }
}