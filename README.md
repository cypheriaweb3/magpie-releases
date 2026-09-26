# magpie-releases

Builds of [magpie](https://github.com/yetone/magpie). Pushing a `v*` tag
there triggers the workflow here, which builds, signs, notarises and
publishes the release.

## Cypheria build

The `v0.1.888-cypheria` tag builds
[`cypheriaweb3/magpie@v0.1.888-cypheria`](https://github.com/cypheriaweb3/magpie/tree/v0.1.888-cypheria).
It preserves the upstream workflow: a `repository_dispatch` release event
builds and publishes, while a manual **Release** workflow run may publish or
act as a build-only dry run. For this build, pass source ref
`v0.1.888-cypheria` and version `0.1.888-cypheria`. The source repository is
public, so checkout does not require `MAGPIE_DEPLOY_KEY`.

Get it from [usemagpie.ai](https://usemagpie.ai) (`curl -fsSL https://usemagpie.ai/install.sh | sh`),
or download the latest from [Releases](https://github.com/yetone/magpie-releases/releases/latest):

- macOS, Apple Silicon: `magpie-darwin-arm64.dmg`
- macOS, Intel: `magpie-darwin-amd64.dmg`
- Windows: `magpie-windows-amd64.exe`, or `magpie-windows-arm64.exe`
- Linux: `magpie-linux-amd64`, or `magpie-linux-arm64` (needs GTK 3 and WebKitGTK 4.1)
- Terminal only: `magpie-cli-<os>-<arch>`

## Homebrew

```sh
brew tap yetone/magpie-releases https://github.com/yetone/magpie-releases
brew trust --tap yetone/magpie-releases
```

(`brew trust` is Homebrew 7's; skip it on an older Homebrew.)

Terminal-only binary, as `magpie` on macOS and Linux:

```sh
brew install magpie
```

The macOS app, signed and notarised, into `/Applications`:

```sh
brew install --cask magpie-app
```

Both are updated on every release, so `brew upgrade` picks up new versions. The app also updates itself, as it does however it was installed; `magpie update` in a Homebrew install says to use `brew upgrade magpie` instead.
