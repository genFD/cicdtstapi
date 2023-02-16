terraform {
  backend "s3" {
    bucket         = "<bucket name>"
    key            = "app.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "app-api-devops-tf-state-lock"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}


# locals {
#   prefix = "${var.prefix}-${terraform.workspace}"
# }

