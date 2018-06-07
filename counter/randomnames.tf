data terraform_remote_state remote {
  backend = "s3"

  config = {
    bucket = "dantestbucket66"
    key    = "count-issue-state"
    region = "eu-west-1"
  }
}

module pets {
  source = "../modules/pets"

  list_to_derive_number_of_pets_from = [
    "${data.terraform_remote_state.remote.foo}",
    "${data.terraform_remote_state.remote.bar}",
    "${data.terraform_remote_state.remote.baz}",
    "${data.terraform_remote_state.remote.beh}",
  ]
}
