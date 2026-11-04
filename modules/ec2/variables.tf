variable "instance_type" {
description = "ec2 instance"
default = "t2.micro"
type = "string"

}

variable "ami" {
description = "ami for the ec2 instance"
default = "ami"
type = "string"

}

variable "region" {
description = "region for the test is east"
default = "us-east-1"
type = "string"

}

variable "keypair" {
description = "ec2 keypair"
default = "newkeypair"
type = "string"

}