cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.708"
  sha256 arm:   "55e4bd572e275e7c0c4f633dd5c045b3ac54dcac32461a6fd300ce2bdadc25a4",
         intel: "a721895d6359417a192076ab5e82666377e329aff224626ed71b25c63dc31d3e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
