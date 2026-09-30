cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.436"
  sha256 arm:   "ba0d6ca5aa25051956f426f9100caee11a51e914305297dd0c8b791f846fae27",
         intel: "5377923719c9161a8e12f920f66f979b22ffaeed58206b2733a9b4bbe74b9ffd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
