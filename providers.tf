terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
  backend "azurerm" {
    subscription_id      = var.subscription_id
    resource_group_name  = "github-universe-demo"
    storage_account_name = "ghuniversetfstate"
    container_name       = "gh-universe-tfstate"
    key                  = "gh-universe.tfstate"
    snapshot             = true
  }
}

provider "github" {
  token = var.github_token
  owner = "dluciame-org"
}
