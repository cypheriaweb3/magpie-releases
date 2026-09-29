cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.382"
  sha256 arm:   "a01e3804b7c9eba880f5265b851816effd6d1f89a63553ae0b27b82a1be92ee3",
         intel: "f51ec1dde7758f6111a8ed3d297d4903ab4049d99b06bafcdd6f3159c051c95f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
