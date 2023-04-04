variable "github_token" {
  description = "Your GitHub Personal Access Token"
  nullable    = false
  default     = false
  sensitive   = true
}

variable "tfe_team_token" {
  description = "Team token to manage terraform organization itself"
  nullable    = false
  default     = false
  sensitive   = true
}

variable "organization_name" {
  description = "Your Organization Name"
  nullable    = false
  default     = false
}