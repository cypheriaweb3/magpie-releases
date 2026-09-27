cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.169"
  sha256 arm:   "fbf30967d76b38ea33680db1215bed476362e8a14dec2e0b939021a0832d8588",
         intel: "1df7c61577674a918565e97b199b10c72cee7adb2fc53ec28cd46aa43defd4e7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
