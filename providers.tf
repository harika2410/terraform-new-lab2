terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>3.50"
    }
  }
backend "s3" {
    bucket = "hari12"
    key    = "hari12/us-east-2/key"
    region = "us-east-2"
  }
}

provider "aws" {
  # Configuration options
  region="us-east-2"
}