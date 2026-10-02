cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.687"
  sha256 arm:   "963ac2b5c83053855a036d13cacd131659765aa87e9497c57777a7082bb02fe8",
         intel: "1048cb7ccb6ccd20cd40af9e180bad300ec7094e26d8e77f4dd085725f895820"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
