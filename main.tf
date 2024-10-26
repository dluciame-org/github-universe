resource "github_actions_organization_secret" "secrets" {
  count           = 101
  secret_name     = "SECRET_${count.index + 1}"
  plaintext_value = count.index
  visibility      = "all"
}
