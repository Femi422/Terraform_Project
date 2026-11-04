# 1. Security Group
resource "aws_security_group" "web_app_sg" {
  name        = "Web-sg"
  description = "Web Application Security Group"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "Allow SSH traffic"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTP traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web-app"
  }
}

# 2. EC2 Instance
resource "aws_instance" "web_app" {
  ami                    = var.ami
  subnet_id              = data.aws_subnet.default.id
  vpc_security_group_ids = [aws_security_group.web_app_sg.id]
  instance_type          = var.instance_type
}

