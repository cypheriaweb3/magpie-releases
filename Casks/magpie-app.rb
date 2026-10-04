cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.830"
  sha256 arm:   "adb9c8faff29ecd206f23f8696158fd9f8712a327cfbeaa86d69e064aa3dca7d",
         intel: "945aa8e9747073262a814520b87ac8bc2a0df70037c00388435fbd4ef328e9f4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
