cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.696"
  sha256 arm:   "402469842de1d36c42a0b1a91b2e394067954f370f66e4aac27cfb3906efe2fb",
         intel: "e041fb83ad393326e5c8c28f62369be64e00a59e74ee98a1366a8935a8dceef8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
