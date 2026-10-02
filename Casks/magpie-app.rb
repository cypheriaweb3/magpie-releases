cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.633"
  sha256 arm:   "c8554c9cefb4a2723f36f2b976f38d9b72b9c1be5308166817b087e036304552",
         intel: "b5708a4944bf9bbabebd509e713c3de07f9c617b9eeab445b1585a168ff44c01"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
