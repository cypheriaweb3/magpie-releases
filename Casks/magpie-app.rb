cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.397"
  sha256 arm:   "5dbaf8fd2ab2d63a7af138c26a93c10c05ab72ac6b979e15bff8493c00e4ebae",
         intel: "3027e272940e9b99c3b63b6995aee98cc04f6eb08fe6a08eb2c7a1f82e18c258"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
