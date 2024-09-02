terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
    
    helm = {
      source = "hashicorp/helm"
      version = ">= 2.0.0"
    }
  }
  backend "s3" {
    bucket         = "terraform-remote-backend-s3-sahr2024-dev"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate-dev"
    dynamodb_table = "Lock-Files"

  }
}

provider "aws" {
  region  = var.aws-region
}