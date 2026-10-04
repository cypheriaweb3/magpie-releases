cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.828"
  sha256 arm:   "8a774ee70a51064cbe3457e861d1c45b0aa68f5c984bd6a6e963d4061bf8dc7b",
         intel: "84a9b627efa85becf5992af85e742896a1577dea8fa25a9d03e361450fa7daa0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
