cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.700"
  sha256 arm:   "40f09cad404e3b8924e07ce2149aa5cf743c962dbbd5dd2c5a68fa768d5bbfd6",
         intel: "24f13646a47b07f7a99b651a377fc1650ed4ff23af4b478ec0a3369fde686e45"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
