resource "aws_vpc" "production-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "production"
  }
}


resource "aws_subnet" "public-subnet" {
  vpc_id     = aws_vpc.production-vpc.id
  cidr_block = "10.0.1.0/24"

   tags = {
    name = "dev"
  }
}

resource "aws_subnet" "private-subnet" {
  vpc_id     = aws_vpc.production-vpc.id
  cidr_block = "10.0.2.0/24"
  
  tags = {
    name = "prod"
  }
}


resource "aws_internet_gateway" "production" {
  vpc_id = aws_vpc.production-vpc.id
   tags = {
    name = "prod"
  }
}


resource "aws_route_table" "prt" {
  vpc_id = aws_vpc.production-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.production.id
  }
   tags = {
    name = "prod"
  }
}



resource "aws_security_group" "psg" {
  name        = "security group using Terraform"
  description = "security group using Terraform"

egress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }


  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}










