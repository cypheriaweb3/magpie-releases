cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.571"
  sha256 arm:   "a486a603b4d2ba62bde7637766f78f48e8f94a100f3a4571d4994a1b5a3fa3e6",
         intel: "1376238fef07b2a565d378049ba35f9a97171737cf65fbd7ed84059cfe8635b1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
