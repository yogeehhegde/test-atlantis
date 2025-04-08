terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "atlantis" {
  bucket = "test-atlantis-yogeesh"

  tags = {
    Name        = "atlantis S3 Bucket"
    Environment = "Dev"
  }
}
