// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket         = "terraform-states-835367859851"
    dynamodb_table = "terraform-locks-835367859851"
    encrypt        = true
    key            = "stacks/b4ecce97-6d1a-4721-bce6-4e9c061b146d/terraform.tfstate"
    region         = "eu-west-1"
  }
}
