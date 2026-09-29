cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.415"
  sha256 arm:   "59cf8127efdd0eebba0279808f8ffe1fec8b3dca8b9d19ff6d6b67c9a64d9418",
         intel: "08af21e1f56edd54689e0f65b3adf8359ca8b2a1feb0f5b5cbaf88bc67d6e90f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
