// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

module "s3_bucket" {
  acl                      = "private"
  bucket                   = each.key
  control_object_ownership = true
  for_each = {
    amazing-one       = "one"
    exceptional-three = "three"
    wonderful-two     = "two"
  }
  object_ownership = "ObjectWriter"
  source           = "terraform-aws-modules/s3-bucket/aws"
  tags = {
    Env   = "dev"
    Stack = "dev-multiple-buckets"
  }
  version = "~> 4.0"
  versioning = {
    enabled = true
  }
}
