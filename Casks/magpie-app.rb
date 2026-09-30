cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.532"
  sha256 arm:   "55de322ce65bd72f9c9462ded1af4d9aa3acb3ad80a5e83bc0a39f32822bdee6",
         intel: "54548cbe9fe4ad5d2ff247efcabf2ae81342d4995de02cac5c2788ca65d62bed"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
