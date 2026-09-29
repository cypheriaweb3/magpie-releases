cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.377"
  sha256 arm:   "f179b1e55f86e0b4d2bea8c0428653f5f5b7b578848f5f6fc3b5d1277beb355d",
         intel: "5e6780960209b72559fbc4f3ae218d799ef23663b9a7f13f5f8b4a356376332b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
