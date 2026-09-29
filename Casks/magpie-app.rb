cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.389"
  sha256 arm:   "1f93056a52b0a70c90020ec6c5d788fcce135e56a3ff43fdfa281ee2549fbfd5",
         intel: "a69696e35db65904a42611b32c2131426bdbe04d02975b03f0d439b4d9d69f56"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
