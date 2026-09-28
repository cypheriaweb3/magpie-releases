cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.344"
  sha256 arm:   "fcc87ba7f5ab052ef70cd2a21fdd7fd0b038199d07227ad992b6e64701907c3a",
         intel: "52c78c5dc6502ff78f56d5d7f4cbe5cdec31dc0dd1718121135b5f2e9d725ce8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
