generate_hcl "_terramate_remote-state.tf" {
  content {
    terraform {
      backend "s3" {
        bucket         = global.backend_bucket
        key            = global.backend_key
        region         = global.backend_region
        encrypt        = global.backend_encrypt
        dynamodb_table = global.backend_dynamodb_table
      }
    }
  }
}