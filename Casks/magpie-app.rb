cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.614"
  sha256 arm:   "54c708ae151fee3aa07c84ca83e2b778f3a4a1ffffc107f3434e82024aa64c7e",
         intel: "763ec94880d1b48c8b39b6417cbcd1fe403c9bcc6fe0b43d3c24a03090e46fdc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
