cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.270"
  sha256 arm:   "e71f1b39d32a3b7620d72dd1df5a4d0704932b3047a0b3815e7109b53f807b99",
         intel: "90a35650b05eb650ffbec0c63db6360a57ea7fc51f13e9503d759a0c6e651bd3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
