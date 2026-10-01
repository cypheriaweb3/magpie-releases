cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.555"
  sha256 arm:   "1d8dabe8a2582404406d33e5b051591642f8e6f935c9b19d3467e62825918a50",
         intel: "e4b1e4f8f951def4c93059aad6f179ff3081e8e1b585910f7da10848c0d2c669"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
