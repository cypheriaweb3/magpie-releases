cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.519"
  sha256 arm:   "01ed06c6c682d988831a6642d35efb08e565db486fea1ee91460a7b21d51447f",
         intel: "9bb42c3733092f4826e55b09d36f8dc0475c625b1cdfc3aeaf583d8c3dd668e4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
