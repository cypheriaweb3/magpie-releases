cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.460"
  sha256 arm:   "41d192291106d08eacb221514bf4141c93310ecf69a0d054f031ed1b530c6148",
         intel: "3c0bce205bf82c26e2e1f478eea76b1bf304885933ff0a50daac7645773207b4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
