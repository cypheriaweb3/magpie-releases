cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.884"
  sha256 arm:   "ebca790d816c4d74b87b7286ac34d6356e5bafe2d71f1ddd24682e07b793c8f7",
         intel: "21e25b87d0f3fd60dc284e2485b47bf2e313a3aaa06c0fd0406cc5d7683a5393"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
