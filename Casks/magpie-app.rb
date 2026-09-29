cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.388"
  sha256 arm:   "f52552322c9f9f1772d4579e06b5e37207447771b54f77ad48d476b456266521",
         intel: "63021ae53c3417a5425d49b5aa480b211985fa58bf496b64d64eb15f6b0b077e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
