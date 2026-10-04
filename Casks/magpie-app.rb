cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.858"
  sha256 arm:   "6ae656e648e13dd3de84d9d63071a82f0697a457802adecb10fb6ac3d77aa6b4",
         intel: "5889d1d4b58563ae58e1c58b24f5e5fd308c4f1279e45d6302cf4018e610505d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
