resource "aws_instance" "project1" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

  tags = {
    Name = "virtual-machine"
  }
}




