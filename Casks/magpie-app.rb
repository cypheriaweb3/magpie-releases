cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.418"
  sha256 arm:   "8b26f2d193d587ab37f3b125d7b4c6b7ee547bdeaa786c6385b6cdcc55a4ffd5",
         intel: "261aa13bb66f6c379d83231ff45f2961a35dc463f6d274822235902ebf2455c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
