cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.615"
  sha256 arm:   "86e6570643ddf3b013fc7d8b363d92c5a03c58997cdc9135cc6e4c081b19d411",
         intel: "bded6c04b7807c580aad6141b28aff5404e5f7d796c2969231f289063b9c3df9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
