cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.254"
  sha256 arm:   "89d2e4fa110dcde9a439af3f3f2c90467ae9844c5850225ec70e892da5ffda8c",
         intel: "eb116d3cdc2b24f314a3dc82b44033496355d4401b3c88359adbab2631e4a02d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
