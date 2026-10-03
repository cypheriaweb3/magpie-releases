cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.758"
  sha256 arm:   "b07dfba547dc65c8380dddc383ddedec5140eaae1df3843d7c5f8ddf448487fa",
         intel: "25a285a8328ae22e859fc9df58f9f136c3ecd1e3801eec52184a07d1ebe1d6bc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
