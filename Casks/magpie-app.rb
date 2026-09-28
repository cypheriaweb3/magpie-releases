cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.316"
  sha256 arm:   "2bb06a92d513ba215221a71082297c6d21537ab458499e0e88121c122572c60e",
         intel: "a8b9fcc27cf024c0c6978d3741b27e202992a6b8604fb99780899928920c2c51"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
