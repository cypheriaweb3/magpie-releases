cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.789"
  sha256 arm:   "2c85762e85a9f971501f0e8a3c5ddc59867ba0e1a7c84eb47ac3fa42bd44b2ef",
         intel: "80492aab73b9f6123208e5e2e7c634931984d7206701b82b318c18144e673161"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
