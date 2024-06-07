// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terraform-states-835367859851"
    dynamodb_table = "terraform-locks-835367859851"
    encrypt        = true
    key            = "stacks/8c92802b-4c3b-48b7-9e2c-363731d2fa13/terraform.tfstate"
    region         = "eu-west-1"
  }
}
