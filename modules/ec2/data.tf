#data
data "aws_vpc" "default" {
    default = true
}
  
data "aws_security_group" "default" {
 id = var.subnet_id
}
