cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.719"
  sha256 arm:   "696b017da4023fd79a05b48ceaf24aaddd6c550a9144b18991b696c41b5462bf",
         intel: "e66537aad073cf46b610fadb9e17000363b8b68b81321fdcf9629c0ac7c4a425"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
