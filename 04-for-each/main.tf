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

resource "aws_s3_bucket" "mys3bucket" {
  for_each = {
    dev = "my-dev-bucket-ncpl"
    test = "my-test-bucket-ncpl"
    qa = "my-qa-bucket-ncpl"
    prod = "my-prod-bucket-ncpl"
  }
  bucket = "${each.key}-${each.value}"
  tags = {
    Environment = each.key
    bucketname = "${each.key}-${each.value}"
  }
}