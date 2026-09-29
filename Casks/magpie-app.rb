cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.371"
  sha256 arm:   "3134a631622eb861b02c8ac8617f49646bace34844e2405d91e7465850e85452",
         intel: "fca0a5066c7f118f93f79df8a22df34c466e8873fc5d683ab833ceefad59017f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
