resource "github_repository" "organization" {
  name                   = ".github"
  description            = "This is your organization presentation and management repository"
  visibility             = "public"
  auto_init              = true
  delete_branch_on_merge = true
}

resource "github_branch_default" "main" {
  repository = github_repository.organization.name
  branch     = "main"
}


resource "github_repository_file" "dotgithub_repository_README_definition" {
  repository          = github_repository.organization.name
  branch              = github_branch_default.main.branch
  file                = "README.md"
  content             = file("${path.module}/templates/README.md")
  commit_message      = "Initial Commit - Managed by Terraform"
  commit_author       = "USER_NAME"
  commit_email        = "USER_EMAIL"
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}

resource "github_repository_file" "dotgithub_repository_gitignore_definition" {
  repository          = github_repository.organization.name
  branch              = github_branch_default.main.branch
  file                = ".gitignore"
  content             = file("${path.module}/templates/dotgitignore")
  commit_message      = "Initial Commit - Managed by Terraform"
  commit_author       = "USER_NAME"
  commit_email        = "USER_EMAIL"
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}

resource "github_repository_file" "dotgithub_repository_terraformignore_definition" {
  repository          = github_repository.organization.name
  branch              = github_branch_default.main.branch
  file                = ".terraformignore"
  content             = file("${path.module}/.terraformignore")
  commit_message      = "Initial Commit - Managed by Terraform"
  commit_author       = "USER_NAME"
  commit_email        = "USER_EMAIL"
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}

resource "github_repository_file" "dotgithub_repository_definition" {
  repository          = github_repository.organization.name
  branch              = github_branch_default.main.branch
  file                = "dotgithub.github.tf"
  content             = file("${path.module}/templates/dotgithub.github.tf")
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}

resource "github_repository_file" "dotgithub_repository_terraform_main_definition" {
  repository          = github_repository.organization.name
  branch              = github_branch_default.main.branch
  file                = "main.tf"
  content             = file("${path.module}/templates/main.tf")
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}

resource "github_repository_file" "dotgithub_repository_terraform_variables_definition" {
  repository          = github_repository.organization.name
  branch              = github_branch_default.main.branch
  file                = "variables.tf"
  content             = file("${path.module}/variables.tf")
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}

resource "github_repository_file" "dotgithub_repository_terraform_global_definition" {
  repository          = github_repository.organization.name
  branch              = github_branch_default.main.branch
  file                = "global.tf"
  content             = file("${path.module}/global.tf")
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}

resource "github_repository_file" "dotgithub_repository_terraform_workflow_definition" {
  repository          = github_repository.organization.name
  branch              = github_branch_default.main.branch
  file                = ".github/workflows/terraform.yml"
  content             = file("${path.module}/templates/terraform.yml")
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}

resource "github_repository_file" "dotgithub_repository_aws_organization_workflow_definition" {
  repository          = github_repository.organization.name
  branch              = github_branch_default.main.branch
  file                = ".github/workflows/add-aws-organization-infrastructure-repository.yml"
  content             = file("${path.module}/templates/add-aws-organization-infrastructure-repository.yml")
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}

resource "github_repository_file" "dotgithub_repository_terraform_aws_organization_definition" {
  repository          = github_repository.organization.name
  branch              = github_branch_default.main.branch
  file                = "organization.tfe.tf"
  content             = file("${path.module}/organization.tfe.tf")
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}

resource "github_repository_file" "dotgithub_repository_organization_readme_definition" {
  repository          = github_repository.organization.name
  branch              = github_branch_default.main.branch
  file                = "profile/README.md"
  content             = file("${path.module}/templates/README_ORGANIZATION.md")
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}