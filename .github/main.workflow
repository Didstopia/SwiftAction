workflow "Push Workflow" {
  on = "push"
  resolves = ["Swift Action"]
}

workflow "Pull Request Workflow" {
  on = "pull_request"
  resolves = ["Swift Action"]
}

action "Swift Action" {
  uses = "./"
}
