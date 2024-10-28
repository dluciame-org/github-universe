
locals {
  numbers = [for i in range(1, 105) : format("%03d", i)]
}

resource "github_actions_organization_c" "secrets" {
  count           = length(local.numbers)
  secret_name     = "SECRET_${local.numbers[count.index]}"
  plaintext_value = local.numbers[count.index]
  visibility      = "all"
}


resource "github_organization_variable" "variables" {
  count      = length(local.numbers)
  name       = "VARIABLE_${local.numbers[count.index]}"
  value      = local.numbers[count.index]
  visibility = "all"
}
