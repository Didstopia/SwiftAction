# GitHub Action for Swift

Provides [Swift](https://swift.org) support for [GitHub Actions](https://github.com/features/actions).

## Usage

To begin using this action, you only need to define `args` in the GitHub Action, which will be automatically forwarded to the `swift` binary (eg. `swift <args>`).

If you need more control over the process, you can define `runs` instead, which will override the `swift` binary (eg. `<runs> <args>`).

```hcl
workflow "Push Workflow" {
  on = "push"
  resolves = ["Build"]
}

action "Build" {
  uses = "Didstopia/SwiftAction@master"
  args = "build"
}
```

## License

[MIT](LICENSE)
