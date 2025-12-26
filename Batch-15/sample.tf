provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "myinstance" {
  ami = "ami-0fa91bc90632c73c9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0fe891bfe6ba508d5"]
  key_name = "Instance-Key"
  availability_zone = "us-east-1a"


  tags = {
    name = "myinstance"
  }
  
}