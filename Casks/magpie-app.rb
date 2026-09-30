cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.534"
  sha256 arm:   "49318cef9ed0e4160970592d2ff40028045b955bed2a24076108bac0fdce66ac",
         intel: "6ad2f0d4b87720844f3ffb9a41c5f41a1105d69d569b13b0dfe7c987da5f5f2f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
