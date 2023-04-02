resource "github_repository" "test_repository" {
  name        = "test"
  description = "Bla bla bla"
  visibility  = "public"

  delete_branch_on_merge = true
}