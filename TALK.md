# Plan for Terramate talk (based on my previous talks on Terragrunt)

1. Intro and use cases:
 - https://terramate.io/docs/cli/getting-started/
 - https://github.com/terramate-io/terramate-examples
 - Terramate Cloud (not violating HC License change!)
 - Terramate concepts (Stacks, Variables)

2. Demo:
 - code structure
   - group by logical provider's mental model (AWS = account/region/env/proj)
   - group by working area (eg, all AWS Lambda functions inside "lambdas" folder)
   - service-provider oriented VS application-oriented approach
   - Bonus: structure code anyhow, because TM stacks != TG folder structure. TF states can be anywhere.
   
 - Show/hide tf files (.vscode/settings.json)
 - IAM roles (direnv)
 - Terragrunt hooks ( https://github.com/terraform-aws-modules/meta/blob/master/github/terragrunt.hcl#L6 )
 - dependencies (wants, needs, before, after)
 - dependency
 - apply-all, plan-all, validate-all (--tags, --no-tags)
 - pre-commit-terraform
 - patterns:
   - include files (hierarchy, internal (specific) + high-level (general))
   - modules (local => PR to origin => external repo)
   - extend Terramate with Terraform (workaround for passing providers or other limits, terraform does not support CLI for providers, for eg)
   - use module placeholder to get remote_state benefits
 - complains & limitations:
   - verbosity in outputs
   - multiple providers (possible, but hard)
   - for_each with modules
   - circular dependencies between modules (eg, AWS Lambda + API Gateway + Permissions)
   - lots of various issues and bugs when doing complex things
   - terragrunt state

 - Unwrap modules (stacks/dev/external-module + `take tmp_s3 && terraform init -from-module=terraform-aws-modules/s3-bucket/aws`)

 - Show: How to workaround Terraform limitations... dynamic providers
 - Show: data-sources and cross-stacks values