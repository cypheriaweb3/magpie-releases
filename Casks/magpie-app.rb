cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.249"
  sha256 arm:   "de81689d31debd5e5dec66a61e3eda13a7728b168a9b08900f708fe87d1954dc",
         intel: "bb6f2702ee122730e80baf911445a6fe6caffe418540e14611dfa1c1a7d4251e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
