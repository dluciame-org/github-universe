terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
  # backend "azurerm" {
  #   subscription_id      = "c03796fc-db28-4a77-9aac-8b1e41a415c8"
  #   resource_group_name  = "github-universe-demo"
  #   storage_account_name = "ghuniversetfstate"
  #   container_name       = "gh-universe-tfstate"
  #   key                  = "gh-universe.tfstate"
  #   snapshot             = true
  # }
}

provider "github" {
  token = var.github_token
  owner = "dluciame-org"
}
