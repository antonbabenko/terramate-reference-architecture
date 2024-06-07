// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

provider "aws" {
  allowed_account_ids = [
    "835367859851",
  ]
  region                      = "eu-west-1"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}
terraform {
  required_version = "~> 1.8"
}
