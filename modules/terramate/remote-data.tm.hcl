generate_hcl "_terramate_remote-data.tf" {
  condition = tm_try(global.remote_state_data_enabled, false)
  content {
    tm_dynamic "data" {
      for_each  = global.remote_state_datasources
      condition = tm_can(global.remote_state_datasources)
      iterator  = datasource

      labels = ["terraform_remote_state", tm_replace(datasource.key, "/", "_")]

      attributes = {
        backend = "s3"
        config = {
          bucket         = "${global.backend_bucket}"
          key            = "${datasource.value}/terraform.tfstate"
          region         = "${global.backend_region}"
          encrypt        = true
          dynamodb_table = "${global.backend_dynamodb_table}"
        }
      }
    }

    tm_dynamic "locals" {
      for_each  = global.remote_state_datasources
      condition = tm_can(global.remote_state_datasources)
      iterator  = datasource

      attributes = {
        "${tm_replace(datasource.key, "/", "_")}_outputs" = tm_hcl_expression("data.terraform_remote_state.${tm_replace(datasource.key, "/", "_")}.outputs")
      }
    }
  }
}