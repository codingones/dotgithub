variable "github_token" {
  description = "Your GitHub Personal Access Token"
  nullable    = false
  default     = false
  sensitive   = true
}

variable "organization_name" {
  description = "Your Organization Name"
  nullable    = false
  default     = false
}

variable "tfe_owners_team_id" {
  description = "Tfe owners team id"
  nullable    = false
  default     = false
}