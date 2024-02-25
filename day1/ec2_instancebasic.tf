terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.38.0"
    }
  }
}

provider "aws" {
    region= "us-east-1"
  # Configuration options
}

resource "aws_instance" "demo" {
  ami= "ami-0c7217cdde317cfec" 
  instance_type = "t2.micro"

  tags = {
    Name = "First Instance"
  }
}
