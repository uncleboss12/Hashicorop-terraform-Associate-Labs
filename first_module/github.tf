terraform {
    required_providers {
        github = {
        source = "integrations/github"
        version = "~> 5.0"
        }
    }
}

# configure the GitHub provider
provider "github" {
  token = ""
}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"

  template {
    owner                = "github"
    repository           = "terraform-template-module"
    include_all_branches = true
  }
}