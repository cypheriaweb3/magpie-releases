cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.252"
  sha256 arm:   "dcbb4ae739e363af12ae814ee9bb27a793e4b907b4e13258052ff240be175d2f",
         intel: "c60437e2b6bfe3c2a1535781209d8a7fa2d4fe82f3f18ef9723bb5fd07a9df82"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
