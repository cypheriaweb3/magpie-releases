cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.482"
  sha256 arm:   "09e041eaa2c724a9f86a5c2367ae89e49ec23938bf99ff89771b43d8db3e95a4",
         intel: "c5de35b39aeb33869038c73afdb7191283d62e8ead2b35e693af76ed06dab4e2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
