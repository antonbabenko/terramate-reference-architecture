// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terraform-states-835367859851"
    dynamodb_table = "terraform-locks-835367859851"
    encrypt        = true
    key            = "stacks/fc1b61dd-b4ad-4b50-b4d5-e659580738cc/terraform.tfstate"
    region         = "eu-west-1"
  }
}
