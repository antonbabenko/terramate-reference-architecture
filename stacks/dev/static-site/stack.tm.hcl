stack {
  name        = "dev-static-site"
  description = "Static site"
  id          = "fc1b61dd-b4ad-4b50-b4d5-e659580738cc"

  tags = ["dev", "static-site"]

  after = ["tag:dev:random-pet"]

  wants = ["../random-pet"]
}

import {
  source = "/modules/static-site/*.tm.hcl"
}

globals {
  # bucket = "static-something"
  bucket = "data.terraform_remote_state.random-pet.outputs.id"

  tags = {
    Env = "dev2"
  }

  remote_state_data_enabled = true
  remote_state_datasources = {
    "random-pet" = "stacks/b4ecce97-6d1a-4721-bce6-4e9c061b146d"
  }
}