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
  content             = "This content is ignored, do not touch"
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
  content             = "This content is ignored, do not touch"
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
  content             = "This content is ignored, do not touch"
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
  file                = "dotgithub.tf"
  content             = "This content is ignored, do not touch"
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}



resource "github_repository_file" "dotgithub_repository_terraform_main_definition" {
  repository          = github_repository.organization.name
  branch              = github_branch_default.main.branch
  file                = "main.tf"
  content             = "This content is ignored, do not touch"
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}

resource "github_repository_file" "dotgithub_repository_terraform_variables_definition" {
  repository          = github_repository.organization.name
  branch              = github_branch_default.main.branch
  file                = "variables.tf"
  content             = "This content is ignored, do not touch"
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}

resource "github_repository_file" "dotgithub_repository_terraform_global_definition" {
  repository          = github_repository.organization.name
  branch              = github_branch_default.main.branch
  file                = "global.tf"
  content             = "This content is ignored, do not touch"
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}

resource "github_repository_file" "dotgithub_repository_terraform_workflow_definition" {
  repository          = github_repository.organization.name
  branch              = github_branch_default.main.branch
  file                = ".github/workflows/terraform.yml"
  content             = "This content is ignored, do not touch"
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}


resource "github_repository_file" "dotgithub_repository_aws_organization_workflow_definition" {
  repository          = github_repository.organization.name
  branch              = github_branch_default.main.branch
  file                = ".github/workflows/add-aws-organization-infrastructure-repository.yml"
  content             =  "This content is ignored, do not touch"
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}

resource "github_repository_file" "dotgithub_repository_organization_readme_definition" {
  repository          = github_repository.organization.name
  branch              = github_branch_default.main.branch
  file                = "profile/README.md"
  content             = "This content is ignored, do not touch"
  overwrite_on_create = true

  lifecycle {
    ignore_changes = all
  }
}