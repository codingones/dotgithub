terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "ORGANIZATION_NAME"

    workspaces {
      name = "organization"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.20"
    }
    tfe = {
      version = "~> 0.43.0"
    }
  }
}

provider "github" {
  owner = "ORGANIZATION_NAME"
  token = var.github_token
}

provider "tfe" {
  hostname = "app.terraform.io"
}