cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.552"
  sha256 arm:   "d0cdad435122f89cda435442ae151dd7144c98a182310fdbe3eb740013857880",
         intel: "32121809c6af1458cee750c158c77be6f8cd07a3c9cb79690fde7d79ebf4d223"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
