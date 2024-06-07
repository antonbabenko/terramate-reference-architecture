generate_hcl "for_each_main.tf" {
  condition = tm_can(global.buckets)
  content {
    module "s3_bucket" {
      source  = "terraform-aws-modules/s3-bucket/aws"
      version = "~> 4.0"

      for_each = global.buckets

      bucket = tm_hcl_expression("each.key")

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

generate_hcl "for_each_outputs.tf" {
  condition = tm_can(global.buckets)
  content {
    output "s3_bucket_ids" {
      description = "The name of the buckets."
      value       = { for k, v in module.s3_bucket : k => v.s3_bucket_id }
    }
  }
}