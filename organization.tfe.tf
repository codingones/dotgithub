data "tfe_organization" "organization" {
  name = "ORGANIZATION_NAME"
}

resource "tfe_team_token" "team_token" {
  team_id = var.tfe_owners_team_id
}

data "tfe_workspace" "organization_workspace" {
  name         = "organization"
  organization = data.tfe_organization.organization.name
}

resource "tfe_variable" "var_organization_name" {
  key          = "organization_name"
  value        = data.tfe_organization.organization.name
  category     = "terraform"
  workspace_id = data.tfe_workspace.organization_workspace.id
  description  = "organization name on github and terraform cloud"
}

resource "tfe_variable" "tfe_team_token" {
  key          = "tfe_team_token"
  value        = tfe_team_token.team_token.token
  category     = "terraform"
  workspace_id = data.tfe_workspace.organization_workspace.id
  description  = "organization name on github and terraform cloud"
  sensitive    = true
}

resource "tfe_variable" "tfe_team_id" {
  key          = "tfe_team_id"
  value        = var.tfe_owners_team_id
  category     = "terraform"
  workspace_id = data.tfe_workspace.organization_workspace.id
  description  = "organization name on github and terraform cloud"
}

resource "tfe_variable" "github_token" {
  key          = "github_token"
  value        = var.github_token
  category     = "terraform"
  workspace_id = data.tfe_workspace.organization_workspace.id
  description  = "organization name on github and terraform cloud"
  sensitive    = true
}