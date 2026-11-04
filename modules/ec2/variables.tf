variable "instance_type" {
  description = "ec2 instance"
  default     = "t3.micro"
  type        = string
}

variable "ami" {
  description = "ami for the ec2 instance"
  default     = "ami-0c230065b91270bc6"
  type        = string
}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
  type        = string
}

variable "keypair" {
  description = "ec2 keypair"
  default     = "newkeypair"
  type        = string
}

variable "subnet_id" {
  description = "Existing AWS subnet ID"
  type        = string
}

variable "security_group_id" {
  description = "Existing AWS security group ID"
  type        = string
}