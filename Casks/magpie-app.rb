cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.345"
  sha256 arm:   "c7b40668a2d34e22d44d298411b2abe70f8efef92b984d55b15460cb2603fb02",
         intel: "ec5ec9ad46055a2c050df5f0bdb0762f1cca87c7e6463b6145e4f5bb69f31df5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
