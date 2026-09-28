cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.328"
  sha256 arm:   "8c633706be9b005e4913241f5b2655c5673732b9cf990ec3dad4d4664759a2ec",
         intel: "17f74b416c72eacd4190289412e24c35a7a81a4cb828369ba057aa1789876125"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
