// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

module "s3_bucket" {
  acl                      = "private"
  bucket                   = data.terraform_remote_state.random-pet.outputs.id
  control_object_ownership = true
  object_ownership         = "ObjectWriter"
  source                   = "terraform-aws-modules/s3-bucket/aws"
  tags = {
    Env = "dev2"
  }
  version = "~> 4.0"
  versioning = {
    enabled = true
  }
}
