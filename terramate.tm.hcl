terramate {
  required_version = "~> 0.8"

  config {
    run {
      env {
        TF_PLUGIN_CACHE_DIR = "${terramate.root.path.fs.absolute}/.tf_plugin_cache_dir"
      }
    }

    git {
      default_branch = "master"
      default_remote = "origin"

      check_untracked   = false
      check_uncommitted = false
      check_remote      = false
    }

    # disable_safeguards = [
    # "outdated-code",
    # ]

    # Enables the simplified adhoc HCL code generation
    # https://terramate.io/docs/cli/code-generation/tmgen
    experiments = [
      "tmgen"
    ]
  }
}

import {
  source = "/modules/terramate/*.tm.hcl"
}