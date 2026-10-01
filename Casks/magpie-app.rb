cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.565"
  sha256 arm:   "0c3a9f49c0701eb4276dfcce2617d5709e956fa238f3c7976ef2c2a9f6f63556",
         intel: "a0585e8d4b3a1c2693ff1871302c38d8888922b8a5e220ae43b4913c73d0aa20"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
