cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.541"
  sha256 arm:   "62e78fa747eec1efa2edaf88b8727ea643bdbca2a97b167eec967000d78699e9",
         intel: "bd0528fc622a7a513649267a11ac605ac4149226a387cc1347fc5d9e3248dc4a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
