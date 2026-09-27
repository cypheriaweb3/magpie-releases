cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.187"
  sha256 arm:   "f9a385890da7b5db70eacc5b987f72bd8c6544d9560d2b8a4a9d3a4bb0b563c4",
         intel: "952578dae886fa261e23da4ec4db80cbca01e69ec3565fb6bcdfca876c89efd6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
