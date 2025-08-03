variable "zone_id" {
  default = "Z04841243UUHIK4BEKKS5"
}

variable "domain_name" {
  type    = string
  default = "bns-devops.site"
}

variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "ami_id"

}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "instance_type"

}

variable "ec2-tags" {
  type = map(string)
  default = {
    Name    = "roboshop"
    Purpose = "Demo of variables"
  }
}
variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_name" {
  default = "varfile-allow-all"
}

variable "from_port" {
  type    = number
  default = 0
}

variable "to_port" {
  type    = number
  default = 0
}

variable "protocol" {
  default = "-1"
}

variable "sg_description" {
  default = "allowing all ports from internet"
}

variable "enviroment" {
  #default = "dev"
  default = "prod"
}

# variable "instances" {
#   default = ["mongo", "frontend", "user"]
# }

variable "instances" {
  default = {
    mongo    = "t2.micro"
    frontend = "t3.micro"
    user     = "t3.micro"
  }
}