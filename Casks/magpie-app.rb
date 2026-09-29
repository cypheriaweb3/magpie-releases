cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.378"
  sha256 arm:   "1265e2f1776f52a6d3b305ebb8f8e6ad53aec316e025fed1a80da46ebc70944c",
         intel: "d4c978463e715c7aa54f9eabd53e8249f49381420add38d01d42b1ddbc336c8c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
