cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.199"
  sha256 arm:   "550fa28f505e2a715453709d00f9f931b10dcb7a76473e8ae16dae2b0d40752b",
         intel: "936099ff74f4cf4906c68b9f1935ab0527296443809e9181e4254595781aef0f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
