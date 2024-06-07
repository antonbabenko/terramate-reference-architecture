globals {
  # Terraform
  terraform_version = "~> 1.8"

  terraform_aws_provider_version    = "~> 5.0"
  terraform_aws_provider_region     = "eu-west-1"
  terraform_aws_provider_account_id = "835367859851" # demo

  # Backend
  backend_region         = global.terraform_aws_provider_region
  backend_bucket         = "terraform-states-${global.terraform_aws_provider_account_id}"
  backend_key            = "stacks/${terramate.stack.id}/terraform.tfstate"
  backend_encrypt        = true
  backend_dynamodb_table = "terraform-locks-${global.terraform_aws_provider_account_id}"

  # Globals
  region = global.terraform_aws_provider_region
}
