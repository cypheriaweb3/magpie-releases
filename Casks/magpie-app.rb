cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.317"
  sha256 arm:   "087f46fead0c991e835f86f45b6ac98e4c557a883e939c1b52c431b18b7eda74",
         intel: "1a7b6d45c705888b8cd99d4717d556f0c28029bcfa689c1d658989b0f2ffb6b3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
