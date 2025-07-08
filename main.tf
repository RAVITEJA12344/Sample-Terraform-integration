provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-000ec6c25978d5999"
  instance_type = "t2.micro"

  tags = {
    Name = "JenkinsTerraformEC2"
  }
}
