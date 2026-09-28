cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.232"
  sha256 arm:   "710d1cb2fd9dfb2c17dc26033586f1be1e7f24f4dfd7c973db635183755160ce",
         intel: "b6f67f1473d4fe4acba197c9e9a5f53b13905fc78a12fd65977304a440d0a9b9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
