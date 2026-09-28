cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.255"
  sha256 arm:   "bc6a39dbb26fb3d7ab0a2fe52bab9010345684e61bab53d1163f1a6815c82f7f",
         intel: "0f66f5d812d84664d19705cfd285c8df7fef136968ae05a3a143f8d964ca7bea"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
