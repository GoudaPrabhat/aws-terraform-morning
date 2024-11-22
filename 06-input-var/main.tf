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
  ami = var.ec2_ami_id
  instance_type = var.instance_type
  tags = {
    Environment = "Dev"
    Department = "FIN"
  }

}