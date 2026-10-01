cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.578"
  sha256 arm:   "b5c3b7e1eaf61945300a6402ec94c984b8937e953597c5305882e17e7df610b7",
         intel: "5f143ca0fc10593d1213c3a8b3399ebc4c8d29b47e2172a4f30fa4e7522c4776"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
