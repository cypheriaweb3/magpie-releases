cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.443"
  sha256 arm:   "4a52c58b7efea9f838d74542b6c3e900dc4d9c6ea540d272a69d59e545966544",
         intel: "98b56d10257bdbe3eed4e24a66385600a125dc38dd14d2a79c3dd6d0f949663d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
