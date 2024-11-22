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
  tags = {
    Environment = "Dev"
    Department = "FIN"
  }
#  lifecycle {
#    ignore_changes = [ tags, ]
#  }
# lifecycle {
#   create_before_destroy = true
# }
# lifecycle {
#   prevent_destroy = true
# }
}