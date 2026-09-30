cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.445"
  sha256 arm:   "2761521a2f8ce5d21e333e8ee0b6be42cff55f2be9da22a6578db5efe9bc68b2",
         intel: "1249f04b88b23e91d4454c824103b61d0d7c1029a0d0d2279a0e72806a46fe24"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
