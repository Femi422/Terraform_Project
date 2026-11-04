#1 resource
resource "aws_instance" "web-app" {
  ami = var.ami
  instance_type = var.instance_type
  vpc_id = data.aws_vpc.default.id
  }

  #keypair
  resource "aws_key_pair" "deployer"{
    key_name = var.keypair
  }
 # using default sg?

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
    Name = "test-spot"
  }
