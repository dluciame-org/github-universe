
locals {
  numbers = [for i in range(1, 105) : format("%03d", i)]
}

resource "github_actions_organization_secret" "secrets" {
  count           = length(local.numbers)
  secret_name     = "SECRET_${local.numbers[count.index]}"
  plaintext_value = local.numbers[count.index]
  visibility      = "all"
}


resource "github_actions_secret" "repository_secrets" {
  count           = length(local.numbers)
  repository      = "your-repository-name" # Replace with your repository name
  secret_name     = "SECRET_${local.numbers[count.index]}"
  plaintext_value = local.numbers[count.index]
}
