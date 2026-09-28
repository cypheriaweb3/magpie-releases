cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.346"
  sha256 arm:   "522e048bc55694faa00408eeb9b86b94bb23de3554d32ba90a3bf0814a3c227b",
         intel: "7c8369b6ce9d47e4f3b68f3ebf359e516af7eeb25a4ced21c613259b4bfdebc3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
