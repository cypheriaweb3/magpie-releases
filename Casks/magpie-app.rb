cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.365"
  sha256 arm:   "029547118237bcda0fb1ab78bb986a9e3560b790d7c9e711c1d1b65683603cb3",
         intel: "b02946cf9be5de1aa631c904a50c749a4c16315e68046bb24149ebb2bb531c14"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
