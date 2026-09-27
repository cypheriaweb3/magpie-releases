cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.201"
  sha256 arm:   "a73e7271bd044a01fff63f45d6091419b6edcc4c24102a88c14100a4de6589ea",
         intel: "1790732cf6143d5b0ea04bfd91e506534104e180878570c857b7ccec9b0df576"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
