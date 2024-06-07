// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

data "terraform_remote_state" "random-pet" {
  backend = "s3"
  config = {
    bucket         = "terraform-states-835367859851"
    key            = "stacks/b4ecce97-6d1a-4721-bce6-4e9c061b146d/terraform.tfstate"
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "terraform-locks-835367859851"
  }
}
locals {
  random-pet_outputs = data.terraform_remote_state.random-pet.outputs
}
