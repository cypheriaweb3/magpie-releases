cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.327"
  sha256 arm:   "033af22d6a8e1e55eb9063bb467a5f27f93481497e8640fa796e0bea7b0af435",
         intel: "7e3b82d5377e6a8dbe4835f48d55157d5a7efd2a56215d9238138c91106ad42c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
