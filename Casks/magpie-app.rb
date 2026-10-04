cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.875"
  sha256 arm:   "7bf050705821cc57b47243448558ff4900b475543a5a8b62727e15bf5efb0991",
         intel: "195546ddf6a70442b7d5bd883d188a6c5d0b9af203490496816e6ffa837bbddd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
