provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = ">= 0.13.4"
  backend "s3" {
    bucket = "project15-terraform"
    key    = "terraformstate/terraform.tfstate"
    region = "us-east-1"
  }
}