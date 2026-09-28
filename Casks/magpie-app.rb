cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.271"
  sha256 arm:   "763c7d59898b96f353eaffc3f830868399fccc961b518ef02e70ae9a61eeb90f",
         intel: "60e08931548b6b9fbdd560953f74376d3548e15530a5c884b4a31e27ca5996b9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
