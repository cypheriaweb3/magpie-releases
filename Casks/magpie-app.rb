cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.816"
  sha256 arm:   "b093564180a33510660e310798f4aca14fa5db955ccfb73b7b01faac6c2ccf1c",
         intel: "f475521a9402b7af50419aa4b9e9077a4870d8347f9611dbe1c03f2e61a2374e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
