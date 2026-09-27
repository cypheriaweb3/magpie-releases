cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.223"
  sha256 arm:   "c1b2a828565a11e9e08e866ce31d0401c673d2e47aba88e98eb939554ba7878f",
         intel: "44d67ce9f1f2bf094e64424e0a03673bfb47963a791dcac6cf23b65c8ff781e1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
