cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.876"
  sha256 arm:   "b41499e9fb782df82e663fb9629119e66272763bbb9eb8b73dcfce95e0735305",
         intel: "5941b9b23653334360d67a0667900b03de521983b81b11fda05f12bd4059a9f5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
