terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.76.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_instance" "web" {
  ami = "ami-0166fe664262f664c"
  instance_type = "t2.micro"
  count = 2
  tags = {
    Name = "web-0${count.index}"
  }
  
}

#count.index -0 1
#web-0${count.index}---web-00
#web-0${count.index}---web-01