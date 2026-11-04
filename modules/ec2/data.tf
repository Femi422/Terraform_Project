#data
data "aws_vpc" "default" {
  default = true
}
#
data "aws_subnet" "default" {
  id = var.subnet_id
}

data "aws_security_group" "default" {
  id = var.security_group_id
}
