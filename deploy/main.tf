terraform {
  backend "s3" {
    bucket         = "<bucket name>"
    key            = "app.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "app-api-devops-tf-state-lock"
  }
}

provider "aws" {
  region = "us-east-1"
  version = "~> 5.17.0"
}
locals {
  prefix = "${var.prefix}-${terraform.workspace}"
}

