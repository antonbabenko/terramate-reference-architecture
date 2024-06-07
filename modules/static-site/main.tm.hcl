generate_hcl "main.tf" {
  condition = tm_can(global.bucket)
  content {
    module "s3_bucket" {
      source  = "terraform-aws-modules/s3-bucket/aws"
      version = "~> 4.0"

      # bucket = global.bucket
      bucket = tm_hcl_expression(global.bucket)

      acl = "private"

      control_object_ownership = true
      object_ownership         = "ObjectWriter"

      versioning = {
        enabled = true
      }

      tags = global.tags
    }
  }
}

generate_hcl "outputs.tf" {
  condition = tm_can(global.bucket)
  content {
    output "s3_bucket_id" {
      description = "The name of the bucket."
      value       = module.s3_bucket.s3_bucket_id
    }
  }
}