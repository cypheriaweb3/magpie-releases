cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.265"
  sha256 arm:   "158c7a3b1a3a57302d797553e8b6b27f3c8a847e744f53ff2a2a39221509b29c",
         intel: "6e4f5bd140e42f9159314e121b3fc1f7ba388465c1b8e57d0328dbb7179a7bf0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
