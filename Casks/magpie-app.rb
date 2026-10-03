cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.782"
  sha256 arm:   "698e5e3a6d5e7ebba6c159e1151bbb61a41ee6a603f2d56f39a67bba1cf83bcc",
         intel: "6ceff2c8ae607158bbc62a0bfe51e8ba247027a1854ebc64c071a161060f9d19"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
