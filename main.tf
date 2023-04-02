terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "$ORGANIZATION"

    workspaces {
      name = "organization"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = var.github_token
  owner = var.organization_name
}


