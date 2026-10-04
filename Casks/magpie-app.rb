cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.842"
  sha256 arm:   "02b96ec6b53bb3f97e874766a731b9ab637dd559a359fedb77fb9b9250b5b6ce",
         intel: "e17e8bba4e1ef2eaa4b9bb8d583b8e0d661b6b1277c02fc6e723c19e5ed73470"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
