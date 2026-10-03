cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.785"
  sha256 arm:   "da58294b167fb9a8e27c2d64b4b5c2f813d488163b9381d4299a9d9fe8a04e36",
         intel: "d61a4f2f4bca7a4110aebf8843105f1dae1d2f18e1e87cf81fd993337b8f8f88"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
