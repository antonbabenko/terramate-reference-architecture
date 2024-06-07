// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

output "s3_bucket_ids" {
  description = "The name of the buckets."
  value       = { for k, v in module.s3_bucket : k => v.s3_bucket_id }
}
