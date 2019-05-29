# Swift GitHub Action

Provides [Swift](https://swift.org) support for [GitHub Actions](https://github.com/features/actions).

## Usage

To begin using this action, you only need to define `args` in the GitHub Action, which will be automatically forwarded to the `swift` binary (eg. `swift <args>`).

If you need more control over the process, you can define `runs` instead, which will override the `swift` binary (eg. `<runs> <args>`).

```hcl
workflow "main" {
  on = "push"
  resolves = ["swift_build"]
}

action "swift_build" {
  uses = "Didstopia/SwiftAction@v1.0.0"
  args = "build"
}
```

To use the latest development version of this action, change the version number to `master` (eg. `Didstopia/SwiftAction@master`).

## License

[MIT](LICENSE)
