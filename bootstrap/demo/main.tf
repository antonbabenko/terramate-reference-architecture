provider "aws" {
  region = "eu-west-1"

  allowed_account_ids = ["835367859851"] # demo

  default_tags {
    tags = {
      bootstrap = "terramate-reference-architecture"
    }
  }
}

module "iam_github_oidc_provider" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-github-oidc-provider"
  version = "~> 5.0"
}

module "iam_github_oidc_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-github-oidc-role"
  version = "~> 5.0"

  # This should be updated to suit your organization, repository, references/branches, etc.
  subjects = ["antonbabenko/terramate-reference-architecture:*"]

  policies = {
    IAMFullAccess   = "arn:aws:iam::aws:policy/IAMFullAccess",
    PowerUserAccess = "arn:aws:iam::aws:policy/PowerUserAccess"
  }
}

output "arn" {
  description = "ARN of IAM role"
  value       = module.iam_github_oidc_role.arn
}
