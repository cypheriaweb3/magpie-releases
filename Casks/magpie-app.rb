cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.649"
  sha256 arm:   "7e59c60d6c546dcf3b9cb4eab398721872cf73ab253661d274531e84c48523f2",
         intel: "79e1fa1ef334027204bc63313fb716e72761a8f650c8cd0038f9cf4e3e8a82d0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
