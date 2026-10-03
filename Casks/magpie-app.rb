cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.714"
  sha256 arm:   "884913ad7d5265d9e3fbf37a99f209a25930d528f49c5cdbf27ee66b8215c816",
         intel: "540f25580a92843a3fe6e7723fd02808809db1caee5dd4ce7ec4f6a6f70d9e8a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
