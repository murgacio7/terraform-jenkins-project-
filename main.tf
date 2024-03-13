provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "test" {
  ami           = "ami-0f403e3180720dd7e"
  instance_type = "t2.micro"
  tags = {
      Name = "murat-Instance"
  }
}


resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  nstance_tenancy = "default"

  tags = {
    Name = "test"
  }
}

