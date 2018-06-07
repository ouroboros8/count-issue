variable list_to_derive_number_of_pets_from {
  type    = "list"
  default = []
}

resource random_pet pets {
  count = "${length(var.list_to_derive_number_of_pets_from)}"
}
