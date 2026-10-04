cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.840"
  sha256 arm:   "21b658e8e16d82c87472066f1b7436071c856b44b92a23f77fa614887e718e2e",
         intel: "e6930769137b28cb869d36d2613732906605dad6ac3a3f9d5d0b6b20621d7a3c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
