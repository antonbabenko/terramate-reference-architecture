generate_hcl "_providers.tf" {
  # condition = tm_contains(terramate.stack.tags, "local")

  content {
    provider "aws" {
      region = global.terraform_aws_provider_region

      allowed_account_ids = [
        global.terraform_aws_provider_account_id
      ]

      skip_credentials_validation = true
      skip_metadata_api_check     = true
      skip_region_validation      = true
    }

    terraform {
      required_providers {
        aws = {
          source  = "hashicorp/aws"
          version = global.terraform_aws_provider_version
        }

        random = {
          source  = "hashicorp/random"
          version = "~> 3.0"
        }
      }
    }

    terraform {
      required_version = global.terraform_version
    }
  }
}

# provider "aws" {
#   region = "eu-west-1"
#   alias = "eu-west-1"
# }

# generate_hcl "_terramate_versions.tf" {
#   content {
#     terraform {
#       required_version = global.terraform_version[0]
#       tm_dynamic "required_providers" {
#         for_each   = global.terraform_version
#         iterator   = terraform
#         attributes = global.required_providers
#       }
#     }
#   }
# }