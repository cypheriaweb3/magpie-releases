cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.266"
  sha256 arm:   "a1f456682234998e2a1669479fb695624fa153da0c25b3f6a218b5c1f565b364",
         intel: "a0c0954f5bf0c2be1c90d7bc1e8fe20d2fcfc2ad6033be9a9c674ef1ea5cbdd9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
