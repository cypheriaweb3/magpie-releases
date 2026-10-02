cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.625"
  sha256 arm:   "6eb135c1d798105b0ab45411e73b8c6997c57fbf19fde5d155debf7855965709",
         intel: "84b4b974bde458136f67a213e5a99910cbc1d81188bab8f13d3427efc30eec9e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
