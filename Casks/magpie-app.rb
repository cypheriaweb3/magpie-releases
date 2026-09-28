cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.242"
  sha256 arm:   "243a402ecdaf21037cb1362f535fadc8ef1e63e0e1f2b79fd739925516536598",
         intel: "01ec6d287010e6d4289fd12307a318d5323902d700fcf15040e0922b539b65d9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
