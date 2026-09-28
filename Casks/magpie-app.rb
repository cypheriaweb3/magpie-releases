cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.226"
  sha256 arm:   "f0b88be9ba47af7c42851f59f7d68b4bb6a3564023f3929cfd9e81d82b0be3ed",
         intel: "6cfe9374191390668fea5a593785c48611a22d53c26becc805ebea1b4b4a7513"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
