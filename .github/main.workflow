workflow "Push Workflow" {
  on = "push"
  resolves = ["Run Default Action", "Run Custom Action"]
}

workflow "Pull Request Workflow" {
  on = "pull_request"
  resolves = ["Run Default Action", "Run Custom Action"]
}

action "Run Default Action" {
  uses = "./"
}

action "Run Custom Action" {
  uses = "./"
  args = "--version"
}
