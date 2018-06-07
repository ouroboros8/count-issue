terraform {
  backend s3 {
    bucket = "dantestbucket66"
    key    = "count-issue-state"
    region = "eu-west-1"
  }
}

locals {
  foo = "foo"
  bar = "bar"
  baz = "baz"
  beh = "beh"
}

output foo {
  value = "${local.foo}"
}

output bar {
  value = "${local.bar}"
}

output baz {
  value = "${local.baz}"
}

output beh {
  value = "${local.beh}"
}
