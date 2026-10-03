cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.783"
  sha256 arm:   "8a2ad5aa5fb9f972c109f468371543e895807ef74c154085daf9760bd8ae9e15",
         intel: "b7862a01d91a7ed1aa015975ddd1019a53878cd1b96f2b50f0fc3411e10b081f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
