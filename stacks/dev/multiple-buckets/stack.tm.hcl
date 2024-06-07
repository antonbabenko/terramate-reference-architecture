stack {
  name        = "dev-multiple-buckets"
  description = "dev-multiple-buckets"
  id          = "8c92802b-4c3b-48b7-9e2c-363731d2fa13"
}

import {
  source = "/modules/static-site/*.tm.hcl"
}

globals {
  buckets = { "amazing-one" : "one", "wonderful-two" : "two", "exceptional-three" : "three" }

  tags = {
    Env   = "dev"
    Stack = "dev-multiple-buckets"
  }
}