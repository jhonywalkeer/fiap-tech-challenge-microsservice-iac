terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  # backend "s3" {
  #   bucket = "fiap-tech-challenge-terraform-state"
  #   key    = "microsservices-iac/terraform.tfstate"
  #   region = "us-east-1"
  # }

  required_version = ">= 1.0.1"
}

provider "aws" {
  region = "us-east-1"
  skip_credentials_validation = var.environment == "test" ? true : false
  skip_metadata_api_check     = var.environment == "test" ? true : false
  skip_requesting_account_id  = var.environment == "test" ? true : false
  access_key = var.environment == "test" ? "AWS_ACESS_KEY" : null
  secret_key = var.environment == "test" ? "AWS_SECRET_KEY" : null

  endpoints {
    sts = var.environment == "test" ? "http://localhost:4566" : null
    s3 = var.environment == "test" ? "http://localhost:4566" : null
    dynamodb =  var.environment == "test" ? "http://localhost:4566" : null
  }
}