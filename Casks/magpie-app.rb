cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.212"
  sha256 arm:   "b14cd6c7b1ead8627062d628b5a83b0ed4015c8ac6e9f6fca38c6f2ed4130b8b",
         intel: "ee0728bbf9212f78a09599b5f05f5d32ed103fa3dcd06b46d8ad20e09534cd72"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
